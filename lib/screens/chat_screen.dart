import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:phosphoricons_flutter/phosphoricons_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import '../services/llm_inference_service.dart';
import '../services/database_service.dart';

class ChatMessage {
  final String text;
  final bool isUser;
  ChatMessage({required this.text, required this.isUser});
}

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<ChatMessage> _messages = [];
  List<Map<String, dynamic>> _sessions = [];
  String? _currentSessionId;
  bool _hasText = false;
  bool _isIncognito = false;
  bool _isAtBottom = true;
  bool _showScrollToBottom = false;

  String _selectedPillar = "General";
  final LlmInferenceService _inferenceService = LlmInferenceService();
  final DatabaseService _dbService = DatabaseService();

  final List<Map<String, dynamic>> _pillars = [
    {
      "title": "General",
      "subtitle": "Everyday Assistant",
      "icon": Icons.chat_bubble_outline,
    },
    {
      "title": "Operational",
      "subtitle": "Systems & Logic",
      "icon": Icons.auto_awesome_outlined,
    },
    {
      "title": "Personal Counsel",
      "subtitle": "Private Guidance",
      "icon": Icons.face_retouching_natural_outlined,
    },
    {
      "title": "Workplace",
      "subtitle": "Professional Tasks",
      "icon": Icons.work_outline,
    },
    {
      "title": "Culture and Family",
      "subtitle": "Relationships",
      "icon": Icons.groups_outlined,
    },
    {
      "title": "Defence",
      "subtitle": "Record Thoughts",
      "icon": Icons.edit_note_outlined,
    },
  ];

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _hasText = _controller.text.trim().isNotEmpty;
      });
    });
    _scrollController.addListener(_scrollListener);
    _inferenceService.addListener(_onInferenceUpdate);
    _startNewChat();
  }

  void _startNewChat() {
    setState(() {
      _currentSessionId = DateTime.now().millisecondsSinceEpoch.toString();
      _messages.clear();
      _showScrollToBottom = false;
    });
    _loadSessions();
  }

  Future<void> _loadSessions() async {
    if (_isIncognito) return;
    final sessions = await _dbService.getSessions(_selectedPillar);
    setState(() {
      _sessions = sessions;
    });
  }

  Future<void> _loadSession(String? sessionId) async {
    if (_isIncognito) return;
    
    final messages = await _dbService.getMessages(_selectedPillar, sessionId: sessionId);
    setState(() {
      _currentSessionId = sessionId;
      _messages.clear();
      _messages.addAll(messages.map((m) => ChatMessage(
        text: m['text'],
        isUser: m['role'] == 'user',
      )));
    });
    _scrollToBottom(force: true);
    if (!mounted) return;
    if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
      _scaffoldKey.currentState?.closeDrawer();
    }
  }

  String _formatHistoryTitle(String text) {
    if (text.length <= 30) return text;
    return "${text.substring(0, 27)}...";
  }

  void _scrollListener() {
    if (!_scrollController.hasClients) return;
    
    final atBottom = _scrollController.position.pixels >= 
                     _scrollController.position.maxScrollExtent - 50;
    
    setState(() {
      _isAtBottom = atBottom;
      _showScrollToBottom = !atBottom && _messages.isNotEmpty;
    });
  }

  void _onInferenceUpdate() {
    if (mounted) setState(() {});
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _inferenceService.removeListener(_onInferenceUpdate);
    super.dispose();
  }

  void _scrollToBottom({bool force = false}) {
    if (!force && !_isAtBottom) return;
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  void _handleSend() {
    final text = _controller.text.trim();
    if (text.isNotEmpty && !_inferenceService.isGenerating && _currentSessionId != null) {
      setState(() {
        _messages.add(ChatMessage(text: text, isUser: true));
        _controller.clear();
        _showScrollToBottom = false;
      });
      if (!_isIncognito) {
        _dbService.saveMessage(_selectedPillar, 'user', text, _currentSessionId!).then((_) {
          _loadSessions();
        });
      }
      _scrollToBottom(force: true);
      _generateAiResponse(text);
    }
  }

  void _generateAiResponse(String prompt) {
    if (!_inferenceService.isModelLoaded) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Model is not loaded. Please go to Settings.", style: GoogleFonts.notoSans()),
        ),
      );
      return;
    }

    setState(() {
      _messages.add(ChatMessage(text: "", isUser: false));
    });

    String fullResponse = "";
    _inferenceService.generateResponse(prompt, pillar: _selectedPillar).listen(
      (token) {
        fullResponse += token;
        if (mounted) {
          setState(() {
            _messages[_messages.length - 1] = ChatMessage(text: fullResponse, isUser: false);
          });
          _scrollToBottom();
          
          if (!_isAtBottom) {
            setState(() {
              _showScrollToBottom = true;
            });
          }
        }
      },
      onError: (error) {
        if (mounted) {
          setState(() {
            _messages[_messages.length - 1] = ChatMessage(text: "Error: $error", isUser: false);
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text("A hardware error occurred. BrahmAI is switching to Safe Mode.", style: GoogleFonts.notoSans()),
              backgroundColor: Colors.blue.shade800,
            ),
          );
        }
      },
      onDone: () {
        if (!_isIncognito && fullResponse.isNotEmpty && _currentSessionId != null) {
          _dbService.saveMessage(_selectedPillar, 'assistant', fullResponse, _currentSessionId!).then((_) {
            _loadSessions();
          });
        }
      },
    );
  }

  void _handleStop() {
    _inferenceService.stopGeneration();
  }

  void _showPillarSelector() {
    final theme = Theme.of(context);
    showModalBottomSheet(
      context: context,
      backgroundColor: theme.colorScheme.surface,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 24,
                    height: 1,
                    color: theme.colorScheme.primary,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    "BRAHM-EDGE PILLAR",
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.primary,
                      fontSize: 11,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ..._pillars.map((pillar) {
                bool isSelected = pillar['title'] == _selectedPillar;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedPillar = pillar['title'];
                    });
                    _startNewChat();
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: isSelected ? theme.colorScheme.primary.withValues(alpha: 0.1) : theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: isSelected ? theme.colorScheme.primary : theme.colorScheme.outline.withValues(alpha: 0.1),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          pillar['icon'],
                          color: isSelected ? theme.colorScheme.primary : theme.colorScheme.onSurfaceVariant,
                          size: 24,
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              pillar['title'],
                              style: GoogleFonts.notoSans(
                                color: theme.colorScheme.onSurface,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              pillar['subtitle'],
                              style: GoogleFonts.notoSans(
                                color: theme.colorScheme.onSurfaceVariant,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSidebar() {
    final theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.colorScheme.surface,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.2)),
                    ),
                    child: Center(
                      child: Icon(Icons.psychology_outlined, color: theme.colorScheme.onSurface, size: 24),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Brahm-edge",
                        style: GoogleFonts.notoSans(color: theme.colorScheme.primary, fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        _selectedPillar,
                        style: GoogleFonts.notoSans(color: theme.colorScheme.onSurfaceVariant, fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            _buildSidebarItem(PhosphorIcons.notePencil, "New chat", () {
              _startNewChat();
              if (_scaffoldKey.currentState?.isDrawerOpen ?? false) {
                _scaffoldKey.currentState?.closeDrawer();
              }
            }),
            _buildSidebarItem(Icons.settings_outlined, "Model", () {}),
            _buildSidebarItem(Icons.book_outlined, "Prompt Library", () {}),
            _buildSidebarItem(Icons.history, "History", () => _loadSessions()),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(width: 24, height: 1, color: theme.colorScheme.primary),
                  const SizedBox(height: 8),
                  Text(
                    "RECENT ANALYSIS",
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.primary,
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.2,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: _sessions.isEmpty 
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    child: Text(
                      "No recent data",
                      style: GoogleFonts.notoSans(color: theme.colorScheme.onSurfaceVariant, fontSize: 13),
                    ),
                  )
                : ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: _sessions.length,
                    itemBuilder: (context, index) {
                      return _buildRecentItem(_sessions[index]);
                    },
                  ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSidebarItem(IconData icon, String title, VoidCallback onTap) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(icon, color: theme.colorScheme.onSurface, size: 22),
      title: Text(
        title,
        style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 14, fontWeight: FontWeight.w500),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
      onTap: onTap,
    );
  }

  Widget _buildRecentItem(Map<String, dynamic> session) {
    final theme = Theme.of(context);
    return ListTile(
      leading: Icon(Icons.history, color: theme.colorScheme.onSurfaceVariant, size: 18),
      title: Text(
        _formatHistoryTitle(session['text']),
        style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 13),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 24),
      dense: true,
      onTap: () => _loadSession(session['sessionId']),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: theme.scaffoldBackgroundColor,
      drawer: _buildSidebar(),
      body: SafeArea(
        child: Column(
          children: [
            // Custom Top App Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  _IconButton(
                    icon: PhosphorIcons.list,
                    onTap: () {
                      _loadSessions();
                      _scaffoldKey.currentState?.openDrawer();
                    },
                  ),
                  const Spacer(),
                  // Pillar Selector
                  GestureDetector(
                    onTap: _showPillarSelector,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.1)),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Brahm-edge",
                                    style: GoogleFonts.notoSans(
                                      fontSize: 14,
                                      color: theme.colorScheme.primary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  if (_inferenceService.safeModeActive) ...[
                                    const SizedBox(width: 6),
                                    Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1),
                                      decoration: BoxDecoration(
                                        color: Colors.blue.shade900,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: const Text(
                                        "ACTIVE",
                                        style: TextStyle(color: Colors.white, fontSize: 8, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                  const SizedBox(width: 4),
                                  Icon(
                                    Icons.keyboard_arrow_down, 
                                    color: theme.colorScheme.onSurfaceVariant, 
                                    size: 16
                                  ),
                                ],
                              ),
                              Text(
                                _selectedPillar.toUpperCase(),
                                style: GoogleFonts.notoSans(
                                  fontSize: 8,
                                  color: theme.colorScheme.onSurfaceVariant,
                                  fontWeight: FontWeight.w800,
                                  letterSpacing: 1.0,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Spacer(),
                  _IconButton(
                    icon: PhosphorIcons.chatsTeardrop,
                    onTap: _startNewChat,
                  ),
                  const SizedBox(width: 8),
                  _IconButton(
                    icon: _isIncognito ? PhosphorIcons.eye : PhosphorIcons.eyeSlash,
                    isActive: _isIncognito,
                    onTap: () {
                      setState(() {
                        _isIncognito = !_isIncognito;
                      });
                      if (!_isIncognito) {
                        _loadSessions();
                      } else {
                        setState(() {
                          _messages.clear();
                        });
                      }
                    },
                  ),
                ],
              ),
            ),

            // Main Chat Content
            Expanded(
              child: Center(
                child: Container(
                  constraints: const BoxConstraints(maxWidth: 1280),
                  child: Stack(
                    children: [
                      _messages.isEmpty 
                        ? _buildEmptyState()
                        : ListView.builder(
                            controller: _scrollController,
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                            itemCount: _messages.length,
                            itemBuilder: (context, index) {
                              return _buildChatBubble(_messages[index]);
                            },
                          ),
                      if (_showScrollToBottom)
                        Positioned(
                          bottom: 16,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                _scrollToBottom(force: true);
                                setState(() {
                                  _showScrollToBottom = false;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(99),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withValues(alpha: 0.2),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(Icons.arrow_downward, color: theme.colorScheme.onPrimary, size: 16),
                                    const SizedBox(width: 8),
                                    Text(
                                      "Scroll to Bottom",
                                      style: GoogleFonts.notoSans(
                                        color: theme.colorScheme.onPrimary,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),

            // Chat Composer
            _buildComposer(),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState() {
    final theme = Theme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Brahm-edge",
            style: GoogleFonts.notoSans(
              color: _isIncognito ? theme.colorScheme.onSurface : theme.colorScheme.primary,
              fontSize: 40,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 12),
          if (_isIncognito)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: theme.colorScheme.secondary.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: theme.colorScheme.secondary.withValues(alpha: 0.3)),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(PhosphorIcons.shieldCheck, color: theme.colorScheme.primary, size: 16),
                  const SizedBox(width: 8),
                  Text(
                    "INCOGNITO ACTIVE",
                    style: GoogleFonts.notoSans(color: theme.colorScheme.primary, fontSize: 10, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            )
          else
            Text(
              "EDITORIAL INTELLIGENCE",
              style: GoogleFonts.notoSans(color: theme.colorScheme.onSurfaceVariant, fontSize: 10, fontWeight: FontWeight.w800, letterSpacing: 1.2),
            ),
        ],
      ),
    );
  }

  Widget _buildChatBubble(ChatMessage message) {
    final theme = Theme.of(context);
    return Align(
      alignment: message.isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.85),
        decoration: BoxDecoration(
          color: message.isUser ? theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.5) : theme.colorScheme.surfaceContainerLow,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: theme.colorScheme.outline.withValues(alpha: 0.1),
            width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (!message.isUser)
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  children: [
                    Container(width: 24, height: 1, color: theme.colorScheme.primary),
                    const SizedBox(width: 8),
                    Text(
                      "ANALYSIS",
                      style: GoogleFonts.notoSans(color: theme.colorScheme.primary, fontSize: 10, fontWeight: FontWeight.w800, letterSpacing: 1.2),
                    ),
                  ],
                ),
              ),
            Text(
              message.text.isEmpty && !message.isUser 
                ? (_inferenceService.isOptimizing ? "Optimizing engine for your device..." : "Generating...")
                : message.text,
              style: GoogleFonts.notoSans(
                color: theme.colorScheme.onSurface,
                fontSize: 16,
                fontWeight: message.isUser ? FontWeight.w500 : FontWeight.w400,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildComposer() {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            decoration: BoxDecoration(
              color: theme.colorScheme.surface.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: theme.colorScheme.outline.withValues(alpha: 0.1)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 24,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Row(
              children: [
                _IconButton(
                  icon: PhosphorIcons.plus,
                  onTap: () {},
                  containerSize: 40,
                ),
                Expanded(
                  child: TextField(
                    controller: _controller,
                    maxLines: 5,
                    minLines: 1,
                    keyboardType: TextInputType.multiline,
                    style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 16),
                    decoration: InputDecoration(
                      hintText: "Ask BrahmAI anything...",
                      hintStyle: GoogleFonts.notoSans(color: theme.colorScheme.onSurfaceVariant, fontSize: 14),
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                _SendButton(
                  onTap: _inferenceService.isGenerating ? _handleStop : _handleSend,
                  isGenerating: _inferenceService.isGenerating,
                  hasText: _hasText,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _IconButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool isActive;
  final double containerSize;

  const _IconButton({
    required this.icon,
    required this.onTap,
    this.isActive = false,
    this.containerSize = 44,
  });

  @override
  State<_IconButton> createState() => _IconButtonState();
}

class _IconButtonState extends State<_IconButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    _scale = Tween<double>(begin: 1.0, end: 0.985).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTapDown: (_) => _controller.forward(),
      onTapUp: (_) => _controller.reverse(),
      onTapCancel: () => _controller.reverse(),
      onTap: widget.onTap,
      child: ScaleTransition(
        scale: _scale,
        child: Container(
          width: widget.containerSize,
          height: widget.containerSize,
          decoration: BoxDecoration(
            color: widget.isActive ? theme.colorScheme.secondary.withValues(alpha: 0.2) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: widget.isActive ? theme.colorScheme.secondary : theme.colorScheme.outline.withValues(alpha: 0.1),
            ),
          ),
          child: Icon(
            widget.icon, 
            color: widget.isActive ? theme.colorScheme.primary : theme.colorScheme.onSurface, 
            size: 20
          ),
        ),
      ),
    );
  }
}

class _SendButton extends StatefulWidget {
  final VoidCallback onTap;
  final bool isGenerating;
  final bool hasText;

  const _SendButton({
    required this.onTap,
    required this.isGenerating,
    required this.hasText,
  });

  @override
  State<_SendButton> createState() => _SendButtonState();
}

class _SendButtonState extends State<_SendButton> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(milliseconds: 100));
    _scale = Tween<double>(begin: 1.0, end: 0.985).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    bool enabled = widget.hasText || widget.isGenerating;
    return GestureDetector(
      onTapDown: (_) => enabled ? _controller.forward() : null,
      onTapUp: (_) => enabled ? _controller.reverse() : null,
      onTapCancel: () => enabled ? _controller.reverse() : null,
      onTap: widget.onTap,
      child: ScaleTransition(
        scale: _scale,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: enabled ? theme.colorScheme.primary : theme.colorScheme.surfaceContainerHighest,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            widget.isGenerating ? PhosphorIcons.square : PhosphorIcons.arrowUp,
            color: enabled ? theme.colorScheme.onPrimary : theme.colorScheme.onSurfaceVariant,
            size: 18,
          ),
        ),
      ),
    );
  }
}

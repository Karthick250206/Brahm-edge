import 'package:flutter/material.dart';

class PillarChatsScreen extends StatefulWidget {
  final String pillarName;
  final String storage;
  final String retention;

  const PillarChatsScreen({
    super.key,
    required this.pillarName,
    required this.storage,
    required this.retention,
  });

  @override
  State<PillarChatsScreen> createState() => _PillarChatsScreenState();
}

class _PillarChatsScreenState extends State<PillarChatsScreen> {
  late List<Map<String, dynamic>> _chats;
  bool _selectAll = false;

  @override
  void initState() {
    super.initState();
    _chats = [
      {
        "title": "Debugging Async Python M...",
        "size": "45 KB",
        "time": "2 days ago",
        "messages": 14,
        "selected": true,
      },
      {
        "title": "React Server Components A...",
        "size": "120 KB",
        "time": "5 days ago",
        "messages": 32,
        "selected": false,
      },
      {
        "title": "SQL Query Optimization Inde...",
        "size": "12 KB",
        "time": "Yesterday",
        "messages": 4,
        "selected": true,
      },
    ];
  }

  void _toggleSelectAll(bool? value) {
    setState(() {
      _selectAll = value ?? false;
      for (var chat in _chats) {
        chat['selected'] = _selectAll;
      }
    });
  }

  void _showDeleteConfirmationDialog(int count) {
    double totalKB = 0;
    for (var chat in _chats.where((c) => c['selected'] == true)) {
      String sizeStr = chat['size'].toString().split(' ')[0];
      totalKB += double.tryParse(sizeStr) ?? 0;
    }
    String spaceFreed = totalKB > 1024 
        ? "~${(totalKB / 1024).toStringAsFixed(1)} MB" 
        : "~${totalKB.toInt()} KB";

    showDialog(
      context: context,
      builder: (context) => Dialog(
        backgroundColor: const Color(0xFF161B22),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: const Color(0xFFB91C1C).withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.warning_amber_rounded, color: Color(0xFFF87171), size: 20),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      "Delete $count chat threads?",
                      style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close, color: Color(0xFF94A3B8), size: 20),
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              const Text(
                "You are about to permanently delete the following scope:",
                style: TextStyle(color: Color(0xFF94A3B8), fontSize: 14),
              ),
              const SizedBox(height: 16),
              _buildDialogBullet("Target", "${widget.pillarName} mode"),
              _buildDialogBullet("Items affected", "$count saved chats and derived indexes"),
              _buildDialogBullet("Space to be Freed", spaceFreed),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    _performDelete();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4FD1C5),
                    foregroundColor: const Color(0xFF0B1019),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text("Delete permanently", style: TextStyle(fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () => Navigator.pop(context),
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF334155)),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text("Cancel", style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDialogBullet(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 6),
            child: Icon(Icons.circle, color: Color(0xFFF87171), size: 6),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: const TextStyle(fontSize: 13, height: 1.4),
                children: [
                  TextSpan(text: "$label: ", style: const TextStyle(color: Color(0xFF94A3B8))),
                  TextSpan(text: value, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _performDelete() {
    setState(() {
      _chats.removeWhere((chat) => chat['selected'] == true);
      _selectAll = false;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Selected chats deleted successfully"), backgroundColor: Colors.green),
    );
  }

  void _deleteSelected() {
    int count = _chats.where((c) => c['selected'] == true).length;
    if (count > 0) {
      _showDeleteConfirmationDialog(count);
    }
  }

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFF0B1019);
    const cardColor = Color(0xFF161B22);
    const accentColor = Color(0xFF4FD1C5);
    const textSecondary = Color(0xFF94A3B8);
    const errorRed = Color(0xFFF87171);

    int selectedCount = _chats.where((c) => c['selected'] == true).length;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: accentColor),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Pillar: ${widget.pillarName}",
          style: const TextStyle(color: accentColor, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  _buildSectionTitle("METADATA OVERVIEW", accentColor),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(child: _buildMetaCard("PILLAR STORAGE", widget.storage, "MB", accentColor, cardColor)),
                      const SizedBox(width: 16),
                      Expanded(child: _buildMetaCard("ACTIVE RETENTION", widget.retention, "Days", accentColor, cardColor)),
                    ],
                  ),
                  const SizedBox(height: 32),
                  // Search Bar
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1C2431),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        icon: Icon(Icons.search, color: textSecondary),
                        hintText: "Search chats in this pillar...",
                        hintStyle: TextStyle(color: textSecondary, fontSize: 14),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 24,
                            width: 24,
                            child: Checkbox(
                              value: _selectAll,
                              onChanged: _toggleSelectAll,
                              activeColor: accentColor,
                              side: const BorderSide(color: textSecondary),
                            ),
                          ),
                          const SizedBox(width: 12),
                          const Text("Select All", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600)),
                        ],
                      ),
                      Text("${_chats.length} ITEMS FOUND", style: const TextStyle(color: textSecondary, fontSize: 10, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 16),
                  ..._chats.asMap().entries.map((entry) {
                    final index = entry.key;
                    final chat = entry.value;
                    return _buildChatCard(chat, index, accentColor, cardColor, textSecondary);
                  }).toList(),
                  const SizedBox(height: 32),
                  const Text(
                    "Pillar Visualization",
                    style: TextStyle(color: accentColor, fontSize: 14, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Neural weight distribution for the ${widget.pillarName} across stored historical context.",
                    style: const TextStyle(color: textSecondary, fontSize: 12, height: 1.4),
                  ),
                  const SizedBox(height: 100), // Space for bottom buttons
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        color: bgColor,
        padding: const EdgeInsets.fromLTRB(24, 16, 24, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: selectedCount > 0 ? _deleteSelected : null,
                icon: const Icon(Icons.delete_outline, size: 20),
                label: Text("Delete Selected ($selectedCount)"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: accentColor,
                  foregroundColor: bgColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  disabledBackgroundColor: accentColor.withValues(alpha: 0.3),
                ),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, size: 20),
                label: const Text("Cancel"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: errorRed,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title, Color color) {
    return Row(
      children: [
        Container(width: 24, height: 1.5, color: color.withValues(alpha: 0.3)),
        const SizedBox(width: 12),
        Text(title, style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.w900, letterSpacing: 1.5)),
      ],
    );
  }

  Widget _buildMetaCard(String title, String value, String unit, Color accent, Color cardColor) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(color: Color(0xFF64748B), fontSize: 10, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(value, style: const TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(width: 4),
              Text(unit, style: TextStyle(color: accent, fontSize: 14, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildChatCard(Map<String, dynamic> chat, int index, Color accent, Color cardColor, Color textSecondary) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: chat['selected'] ? accent.withValues(alpha: 0.3) : Colors.transparent),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 24,
            width: 24,
            child: Checkbox(
              value: chat['selected'],
              onChanged: (val) {
                setState(() {
                  chat['selected'] = val;
                  _selectAll = _chats.every((c) => c['selected'] == true);
                });
              },
              activeColor: accent,
              side: const BorderSide(color: Color(0xFF334155)),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chat['title'],
                  style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(chat['size'], style: TextStyle(color: accent, fontSize: 11, fontWeight: FontWeight.bold)),
                    const SizedBox(width: 8),
                    const Text("•", style: TextStyle(color: Color(0xFF334155))),
                    const SizedBox(width: 8),
                    Text(chat['time'], style: TextStyle(color: textSecondary, fontSize: 11)),
                    const SizedBox(width: 8),
                    const Text("•", style: TextStyle(color: Color(0xFF334155))),
                    const SizedBox(width: 8),
                    const Icon(Icons.chat_bubble_outline, color: Color(0xFF64748B), size: 12),
                    const SizedBox(width: 4),
                    Text("${chat['messages']} messages", style: TextStyle(color: textSecondary, fontSize: 11)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

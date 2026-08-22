import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';
import 'pillar_overview_screen.dart';

class PillarsInfoScreen extends StatelessWidget {
  const PillarsInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    const tealColor = Color(0xFF006070);

    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFF8FAFC),
        elevation: 0,
        scrolledUnderElevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: tealColor),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.pillars_info.title,
              style: GoogleFonts.notoSans(
                color: tealColor,
                fontSize: 32,
                fontWeight: FontWeight.w800,
                height: 1.1,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              t.pillars_info.subtitle,
              style: GoogleFonts.notoSans(
                color: const Color(0xFF475569),
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 32),
            
            // Bento Grid Area
            IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Left Column: Tall Card (General Intelligence)
                  Expanded(
                    flex: 1,
                    child: _buildBentoCard(
                      context,
                      title: t.pillars_info.general_title,
                      description: t.pillars_info.general_desc,
                      icon: Icons.grid_view_rounded,
                      cardColor: const Color(0xFFE0F2F1),
                      accentColor: const Color(0xFF00796B),
                      type: PillarType.general,
                      isTall: true,
                    ),
                  ),
                  const SizedBox(width: 16),
                  // Right Column: Two stacked cards
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _buildBentoCard(
                          context,
                          title: t.pillars_info.workplace_title,
                          description: t.pillars_info.workplace_desc,
                          icon: Icons.article_outlined,
                          cardColor: const Color(0xFFE3F2FD),
                          accentColor: const Color(0xFF1976D2),
                          type: PillarType.workplace,
                        ),
                        const SizedBox(height: 16),
                        _buildBentoCard(
                          context,
                          title: t.pillars_info.culture_title,
                          description: t.pillars_info.culture_desc,
                          icon: Icons.people_outline_rounded,
                          cardColor: const Color(0xFFF5F3FF),
                          accentColor: const Color(0xFF7C3AED),
                          type: PillarType.culture,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            // Bottom Card: Personal Counsel
            _buildBentoCard(
              context,
              title: t.pillars_info.counsel_title,
              description: t.pillars_info.counsel_desc,
              icon: Icons.lightbulb_outline_rounded,
              cardColor: const Color(0xFFFEF2F2),
              accentColor: const Color(0xFFDC2626),
              type: PillarType.counsel,
              isWide: true,
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildBentoCard(
    BuildContext context, {
    required String title,
    required String description,
    required IconData icon,
    required Color cardColor,
    required Color accentColor,
    required PillarType type,
    bool isTall = false,
    bool isWide = false,
  }) {
    return _BentoCard(
      title: title,
      description: description,
      icon: icon,
      cardColor: cardColor,
      accentColor: accentColor,
      type: type,
      isTall: isTall,
      isWide: isWide,
    );
  }
}

class _BentoCard extends StatefulWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color cardColor;
  final Color accentColor;
  final PillarType type;
  final bool isTall;
  final bool isWide;

  const _BentoCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.cardColor,
    required this.accentColor,
    required this.type,
    this.isTall = false,
    this.isWide = false,
  });

  @override
  State<_BentoCard> createState() => _BentoCardState();
}

class _BentoCardState extends State<_BentoCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PillarOverviewScreen(type: widget.type),
                ),
              );
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: double.infinity,
              constraints: BoxConstraints(
                minHeight: widget.isTall ? 380 : (widget.isWide ? 180 : 182),
              ),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: widget.cardColor,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: _isHovered ? widget.accentColor.withValues(alpha: 0.3) : widget.accentColor.withValues(alpha: 0.1),
                  width: _isHovered ? 1.5 : 1,
                ),
                boxShadow: [
                  BoxShadow(
                    color: _isHovered ? widget.accentColor.withValues(alpha: 0.05) : Colors.black.withValues(alpha: 0.02),
                    blurRadius: _isHovered ? 15 : 10,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  if (widget.isTall)
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: Icon(
                        widget.icon,
                        size: 140,
                        color: widget.accentColor.withValues(alpha: 0.05),
                      ),
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (!widget.isWide) ...[
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.7),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: widget.accentColor.withValues(alpha: 0.1)),
                          ),
                          child: Icon(widget.icon, color: widget.accentColor, size: 24),
                        ),
                        const SizedBox(height: 16),
                      ],
                      Text(
                        widget.title,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.notoSans(
                          color: const Color(0xFF0F172A),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          height: 1.1,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        widget.description,
                        textAlign: TextAlign.start,
                        style: GoogleFonts.notoSans(
                          color: const Color(0xFF475569),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                        ),
                        maxLines: widget.isTall ? 8 : 4,
                        overflow: TextOverflow.visible,
                      ),
                      if (widget.isWide) const SizedBox(height: 16),
                      if (widget.isWide)
                        Center(
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: widget.accentColor.withValues(alpha: 0.08),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Icon(widget.icon, color: widget.accentColor, size: 24),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Hover Arrow - Outside padded area
          Positioned(
            bottom: 12,
            right: 12,
            child: IgnorePointer(
              child: AnimatedScale(
                duration: const Duration(milliseconds: 200),
                scale: _isHovered ? 1.0 : 0.8,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 200),
                  opacity: _isHovered ? 1.0 : 0.0,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: widget.accentColor,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: widget.accentColor.withValues(alpha: 0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

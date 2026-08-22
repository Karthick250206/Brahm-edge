import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';
import 'chat_screen.dart';

enum PillarType { general, workplace, culture, counsel }

class PillarOverviewScreen extends StatelessWidget {
  final PillarType type;

  const PillarOverviewScreen({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final t = Translations.of(context);
    const tealColor = Color(0xFF006070);

    // Dynamic data based on pillar type
    final String title;
    final String subtitle;
    final String analysis;
    final List<String> capabilities;
    final IconData icon;
    final Color cardBgColor;
    final Color accentColor;

    switch (type) {
      case PillarType.general:
        title = t.pillar_details.general.title;
        subtitle = t.pillar_details.general.subtitle;
        analysis = t.pillar_details.general.analysis;
        capabilities = t.pillar_details.general.capabilities;
        icon = Icons.grid_view_rounded;
        cardBgColor = const Color(0xFFE0F2F1);
        accentColor = const Color(0xFF00796B);
        break;
      case PillarType.workplace:
        title = t.pillar_details.workplace.title;
        subtitle = t.pillar_details.workplace.subtitle;
        analysis = t.pillar_details.workplace.analysis;
        capabilities = t.pillar_details.workplace.capabilities;
        icon = Icons.article_outlined;
        cardBgColor = const Color(0xFFE3F2FD);
        accentColor = const Color(0xFF1976D2);
        break;
      case PillarType.culture:
        title = t.pillar_details.culture.title;
        subtitle = t.pillar_details.culture.subtitle;
        analysis = t.pillar_details.culture.analysis;
        capabilities = t.pillar_details.culture.capabilities;
        icon = Icons.people_outline_rounded;
        cardBgColor = const Color(0xFFF5F3FF);
        accentColor = const Color(0xFF7C3AED);
        break;
      case PillarType.counsel:
        title = t.pillar_details.counsel.title;
        subtitle = t.pillar_details.counsel.subtitle;
        analysis = t.pillar_details.counsel.analysis;
        capabilities = t.pillar_details.counsel.capabilities;
        icon = Icons.lightbulb_outline_rounded;
        cardBgColor = const Color(0xFFFEF2F2);
        accentColor = const Color(0xFFDC2626);
        break;
    }

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
        title: Text(
          t.pillar_details.appBar,
          style: GoogleFonts.notoSans(
            color: tealColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: false,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.fromLTRB(24.0, 12.0, 24.0, 120.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(24),
                  decoration: BoxDecoration(
                    color: cardBgColor.withValues(alpha: 0.3),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: accentColor.withValues(alpha: 0.1)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(icon, color: accentColor, size: 28),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        title,
                        style: GoogleFonts.notoSans(
                          color: const Color(0xFF0F172A),
                          fontSize: 32,
                          fontWeight: FontWeight.w800,
                          height: 1.1,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        subtitle,
                        style: GoogleFonts.notoSans(
                          color: const Color(0xFF475569),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),

                // Comprehensive Analysis Section
                Text(
                  t.pillar_details.analysis_label,
                  style: GoogleFonts.notoSans(
                    color: const Color(0xFF0F172A),
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  analysis,
                  style: GoogleFonts.notoSans(
                    color: const Color(0xFF475569),
                    fontSize: 16,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 40),

                // Key Capabilities Section
                Text(
                  t.pillar_details.capabilities_label,
                  style: GoogleFonts.notoSans(
                    color: const Color(0xFF0F172A),
                    fontSize: 12,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                  ),
                ),
                const SizedBox(height: 20),
                ...capabilities.map((capability) => _buildCapabilityItem(capability)),
              ],
            ),
          ),
          
          // Sticky Bottom Button
          Positioned(
            bottom: 32,
            left: 24,
            right: 24,
            child: SizedBox(
              height: 64,
              child: ElevatedButton(
                onPressed: () {
                   Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: tealColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                  elevation: 0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.chat_bubble_outline, size: 22),
                    const SizedBox(width: 12),
                    Text(
                      t.pillar_details.start_chat,
                      style: GoogleFonts.notoSans(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCapabilityItem(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Container(
        padding: const EdgeInsets.only(bottom: 12),
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0xFFE2E8F0), width: 1)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(Icons.check, color: Color(0xFF006070), size: 18),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                text,
                style: GoogleFonts.notoSans(
                  color: const Color(0xFF334155),
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

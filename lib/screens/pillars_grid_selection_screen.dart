import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../i18n/strings.g.dart';
import 'model_download_screen.dart';

class PillarsGridSelectionScreen extends StatefulWidget {
  const PillarsGridSelectionScreen({super.key});

  @override
  State<PillarsGridSelectionScreen> createState() => _PillarsGridSelectionScreenState();
}

class _PillarsGridSelectionScreenState extends State<PillarsGridSelectionScreen> {
  String? _selectedPillar;

  void _selectPillar(String title) {
    setState(() {
      _selectedPillar = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final tealColor = theme.colorScheme.primary;
    final bgColor = theme.scaffoldBackgroundColor;
    final cardBgColor = theme.colorScheme.surfaceContainerHighest;

    final List<Map<String, dynamic>> pillars = [
      {"title": t.pillars.general, "icon": Icons.shield_outlined},
      {"title": t.pillars.operational, "icon": Icons.auto_awesome_outlined},
      {"title": t.pillars.personal, "icon": Icons.face_retouching_natural_outlined},
      {"title": t.pillars.workplace, "icon": Icons.work_outline},
      {"title": t.pillars.culture, "icon": Icons.groups_outlined},
      {"title": t.pillars.journal, "icon": Icons.edit_note_outlined},
    ];

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: theme.colorScheme.onSurface),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          t.pillars.appBar,
          style: GoogleFonts.notoSans(
            color: theme.colorScheme.onSurface,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.pillars.title,
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.onSurface,
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    t.pillars.subtitle,
                    style: GoogleFonts.notoSans(
                      color: theme.colorScheme.onSurfaceVariant,
                      fontSize: 16,
                      height: 1.4,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 40),
                  
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: pillars.length,
                    itemBuilder: (context, index) {
                      final pillar = pillars[index];
                      final isSelected = _selectedPillar == pillar["title"];
                      
                      return GestureDetector(
                        onTap: () => _selectPillar(pillar["title"]),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: isSelected ? theme.colorScheme.surface : cardBgColor.withValues(alpha: 0.6),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected ? tealColor : Colors.transparent,
                              width: 2,
                            ),
                            boxShadow: isSelected ? [
                              BoxShadow(
                                color: tealColor.withValues(alpha: 0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 4),
                              )
                            ] : [],
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: isSelected ? tealColor.withValues(alpha: 0.1) : theme.colorScheme.surface,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  pillar["icon"],
                                  color: tealColor,
                                  size: 32,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Text(
                                pillar["title"],
                                style: GoogleFonts.notoSans(
                                  color: theme.colorScheme.onSurface,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          
          // Bottom Navigation Buttons
          Container(
            padding: const EdgeInsets.fromLTRB(24, 16, 24, 40),
            decoration: BoxDecoration(
              color: bgColor,
              border: Border(top: BorderSide(color: theme.colorScheme.outline.withValues(alpha: 0.1))),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(
                        backgroundColor: theme.colorScheme.onSurface.withValues(alpha: 0.05),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Text(
                        t.pillars.back,
                        style: GoogleFonts.notoSans(
                          color: theme.colorScheme.onSurfaceVariant,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: TextButton(
                      onPressed: _selectedPillar == null ? null : () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ModelDownloadScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: _selectedPillar == null ? theme.colorScheme.onSurface.withValues(alpha: 0.1) : tealColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Text(
                        t.pillars.continueBtn,
                        style: GoogleFonts.notoSans(
                          color: _selectedPillar == null ? theme.colorScheme.onSurfaceVariant : theme.colorScheme.onPrimary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

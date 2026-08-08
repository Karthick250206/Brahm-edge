import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'new_language_selection_screen.dart';

class PillarsGridSelectionScreen extends StatefulWidget {
  const PillarsGridSelectionScreen({super.key});

  @override
  State<PillarsGridSelectionScreen> createState() => _PillarsGridSelectionScreenState();
}

class _PillarsGridSelectionScreenState extends State<PillarsGridSelectionScreen> {
  String? _selectedPillar;

  final List<Map<String, dynamic>> _pillars = [
    {"title": "General", "icon": Icons.shield_outlined},
    {"title": "Workplace", "icon": Icons.psychology_outlined},
    {"title": "Personal Counsel", "icon": Icons.gavel_outlined},
    {"title": "Daily Journal", "icon": Icons.verified_user_outlined},
    {"title": "Culture and Family", "icon": Icons.smart_toy_outlined},
    {"title": "Defence", "icon": Icons.bar_chart_outlined},
  ];

  void _selectPillar(String title) {
    setState(() {
      _selectedPillar = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    const tealColor = Color(0xFF00444F);
    const lightBgColor = Color(0xFFF7FAFF);
    const cardBgColor = Color(0xFFEBF2F7);

    return Scaffold(
      backgroundColor: lightBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1E293B)),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Pillars Selection",
          style: GoogleFonts.notoSans(
            color: const Color(0xFF1E293B),
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
                    "Select your pillars",
                    style: GoogleFonts.notoSans(
                      color: const Color(0xFF1E293B),
                      fontSize: 32,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Choose the core capabilities you want to focus on.",
                    style: GoogleFonts.notoSans(
                      color: const Color(0xFF64748B),
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
                    itemCount: _pillars.length,
                    itemBuilder: (context, index) {
                      final pillar = _pillars[index];
                      final isSelected = _selectedPillar == pillar["title"];
                      
                      return GestureDetector(
                        onTap: () => _selectPillar(pillar["title"]),
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          decoration: BoxDecoration(
                            color: isSelected ? Colors.white : cardBgColor.withOpacity(0.6),
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(
                              color: isSelected ? tealColor : Colors.transparent,
                              width: 2,
                            ),
                            boxShadow: isSelected ? [
                              BoxShadow(
                                color: tealColor.withOpacity(0.1),
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
                                  color: isSelected ? tealColor.withOpacity(0.1) : Colors.white,
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
                                  color: const Color(0xFF1E293B),
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
              color: Colors.white,
              border: Border(top: BorderSide(color: Colors.grey.shade200)),
            ),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 56,
                    child: TextButton(
                      onPressed: () => Navigator.pop(context),
                      style: TextButton.styleFrom(
                        backgroundColor: const Color(0xFFE2E8F0),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Text(
                        "Back",
                        style: GoogleFonts.notoSans(
                          color: const Color(0xFF475569),
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
                          MaterialPageRoute(builder: (context) => NewLanguageSelectionScreen()),
                        );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: _selectedPillar == null ? const Color(0xFFD1D5DB) : tealColor,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      ),
                      child: Text(
                        "Continue",
                        style: GoogleFonts.notoSans(
                          color: _selectedPillar == null ? const Color(0xFF475569) : Colors.white,
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

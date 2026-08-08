import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'model_deletion_screen.dart';
import 'pillar_chats_screen.dart';

class DataManagementScreen extends StatefulWidget {
  const DataManagementScreen({super.key});

  @override
  State<DataManagementScreen> createState() => _DataManagementScreenState();
}

class _DataManagementScreenState extends State<DataManagementScreen> {
  String _retentionPeriod = "30 Days";

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFF0B1019);
    const cardColor = Color(0xFF161B22);
    const accentColor = Color(0xFF4FD1C5); // More precise Teal from image
    const textSecondary = Color(0xFF94A3B8); // Lighter blue-grey
    const errorRed = Color(0xFFF87171); // Soft error red for actions

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color(0xFF1C2431),
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.arrow_back, color: accentColor, size: 20),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          "Data Management &\nRetention",
          style: GoogleFonts.sora(
            color: accentColor,
            fontSize: 24,
            fontWeight: FontWeight.w800,
            height: 1.1,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("STORAGE SUMMARY", accentColor),
            const SizedBox(height: 20),
            // Storage Summary Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withOpacity(0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.5,
                      ),
                      children: [
                        const TextSpan(text: "Total Used: "),
                        TextSpan(
                          text: "4.2 GB / 10 GB",
                          style: GoogleFonts.ibmPlexMono(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Segmented Bar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 14,
                      child: Row(
                        children: [
                          _buildBarSegment(flex: 25, color: const Color(0xFFF87171)), // Red
                          _buildBarSegment(flex: 15, color: const Color(0xFFFB923C)), // Orange
                          _buildBarSegment(flex: 10, color: const Color(0xFFFACC15)), // Yellow
                          _buildBarSegment(flex: 12, color: const Color(0xFF4ADE80)), // Green
                          _buildBarSegment(flex: 8, color: const Color(0xFF22D3EE)), // Blue
                          _buildBarSegment(flex: 10, color: const Color(0xFF94A3B8)), // Grey
                          _buildBarSegment(flex: 20, color: const Color(0xFF334155)), // Dark Grey
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  // Legend Grid
                  _buildLegendGrid(),
                ],
              ),
            ),

            const SizedBox(height: 40),
            _buildSectionTitle("MODEL MANAGEMENT", accentColor),
            const SizedBox(height: 20),
            // Model Management Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withOpacity(0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xFF1C2431),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Icon(Icons.crop_square_rounded, color: accentColor, size: 24),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Delete all downloaded models",
                              style: GoogleFonts.inter(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "Completely remove all local model weights and fine-tuned parameters from this device.",
                              style: GoogleFonts.inter(color: textSecondary, fontSize: 15, height: 1.5),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const ModelDeletionScreen()),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: errorRed.withOpacity(0.2)),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "SELECT MODELS TO DELETE",
                            style: GoogleFonts.ibmPlexMono(color: errorRed, fontSize: 14, fontWeight: FontWeight.w800, letterSpacing: 1.5),
                          ),
                          const SizedBox(width: 10),
                          const Icon(Icons.arrow_forward_ios, color: errorRed, size: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 32),
            // Auto-delete Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white.withOpacity(0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Auto-delete chats older than:",
                    style: GoogleFonts.inter(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "This setting applies across all unlinked conversation modes.",
                    style: GoogleFonts.inter(color: textSecondary, fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0B1019),
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.white.withOpacity(0.1)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _retentionPeriod,
                        dropdownColor: const Color(0xFF161B22),
                        isExpanded: true,
                        icon: const Icon(Icons.keyboard_arrow_down, color: textSecondary),
                        items: ["7 Days", "30 Days", "90 Days", "Never"].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: GoogleFonts.inter(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500)),
                          );
                        }).toList(),
                        onChanged: (val) => setState(() => _retentionPeriod = val!),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
            _buildSectionTitle("MODES", accentColor),
            const SizedBox(height: 20),
            // Pillar Cards
            _buildPillarCard(
              context: context,
              title: "General Assistant\n(Gemini Flash)",
              space: "450",
              instances: 12,
              retention: "30",
              cardColor: cardColor,
              accentColor: accentColor,
              textSecondary: textSecondary,
              errorRed: errorRed,
            ),
            const SizedBox(height: 16),
            _buildPillarCard(
              context: context,
              title: "Code Expert Agent",
              space: "650",
              instances: 8,
              retention: "7",
              cardColor: cardColor,
              accentColor: accentColor,
              textSecondary: textSecondary,
              errorRed: errorRed,
            ),

            const SizedBox(height: 60),
            // Global Delete Action
            Center(
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: const Color(0xFF1C1318),
                      side: const BorderSide(color: Colors.transparent),
                      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(Icons.warning_amber_rounded, color: errorRed, size: 26),
                        const SizedBox(width: 14),
                        Text(
                          "Delete all data",
                          style: GoogleFonts.inter(color: errorRed, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.lock_outline, color: textSecondary, size: 16),
                      const SizedBox(width: 10),
                      Text(
                        "Requires app lock re-authentication",
                        style: GoogleFonts.ibmPlexMono(color: textSecondary.withOpacity(0.7), fontSize: 13, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNav(bgColor, accentColor, textSecondary),
    );
  }

  Widget _buildSectionTitle(String title, Color color) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 1.5,
          color: color.withOpacity(0.3),
        ),
        const SizedBox(width: 14),
        Text(
          title,
          style: GoogleFonts.ibmPlexMono(
            color: color,
            fontSize: 11,
            fontWeight: FontWeight.w900,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }

  Widget _buildBarSegment({required int flex, required Color color}) {
    return Expanded(
      flex: flex,
      child: Container(color: color),
    );
  }

  Widget _buildLegendGrid() {
    return Column(
      children: [
        _buildLegendRow([
          _LegendItem("General", const Color(0xFFF87171)),
          _LegendItem("Defense", const Color(0xFFFB923C)),
        ]),
        const SizedBox(height: 16),
        _buildLegendRow([
          _LegendItem("Personal Wellness", const Color(0xFFFACC15)),
          _LegendItem("Workplace Wellness", const Color(0xFF4ADE80)),
        ]),
        const SizedBox(height: 16),
        _buildLegendRow([
          _LegendItem("Culture & Society", const Color(0xFF22D3EE)),
          _LegendItem("Daily Journal", const Color(0xFF94A3B8)),
        ]),
      ],
    );
  }

  Widget _buildLegendRow(List<_LegendItem> items) {
    return Row(
      children: items.map((item) => Expanded(
        child: Row(
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(color: item.color, shape: BoxShape.circle),
            ),
            const SizedBox(width: 12),
            Text(
              item.label,
              style: GoogleFonts.inter(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      )).toList(),
    );
  }

  Widget _buildPillarCard({
    required BuildContext context,
    required String title,
    required String space,
    required int instances,
    required String retention,
    required Color cardColor,
    required Color accentColor,
    required Color textSecondary,
    required Color errorRed,
  }) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white.withOpacity(0.05)),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFF1C2431),
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.inter(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold, height: 1.2),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Space:", style: GoogleFonts.ibmPlexMono(color: textSecondary, fontSize: 11)),
                            Text("$space MB", style: GoogleFonts.ibmPlexMono(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700)),
                          ],
                        ),
                        const SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Active Instances:", style: GoogleFonts.ibmPlexMono(color: textSecondary, fontSize: 11)),
                            Text("$instances", style: GoogleFonts.ibmPlexMono(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PillarChatsScreen(
                        pillarName: title.split('\n')[0].replaceFirst('General Assistant', 'General Assistant').replaceFirst('Code Expert Agent', 'Code Expert Agent'),
                        storage: space,
                        retention: retention,
                      ),
                    ),
                  );
                },
                child: Row(
                  children: [
                    Text("View Chats", style: GoogleFonts.inter(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600)),
                    const SizedBox(width: 6),
                    const Icon(Icons.chevron_right, color: Colors.white, size: 20),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: errorRed.withOpacity(0.2)),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text("Delete all", style: GoogleFonts.inter(color: errorRed, fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNav(Color bgColor, Color accentColor, Color textSecondary) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        border: Border(top: BorderSide(color: Colors.white.withOpacity(0.1), width: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home_outlined, "HOME", false, textSecondary),
            _buildNavItem(Icons.chat_bubble_outline, "CHAT", false, textSecondary),
            _buildNavItem(Icons.grid_view, "LIBRARY", false, textSecondary),
            _buildNavItem(Icons.person, "YOU", true, accentColor),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, bool active, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
        if (active)
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: SvgPicture.asset(
              'assets/icons/wave_sine.svg',
              width: 16,
              height: 4,
              colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
            ),
          ),
      ],
    );
  }
}

class _LegendItem {
  final String label;
  final Color color;
  _LegendItem(this.label, this.color);
}
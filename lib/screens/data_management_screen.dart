import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../i18n/strings.g.dart';
import 'model_deletion_screen.dart';
import 'pillar_chats_screen.dart';
import '../services/storage_management_service.dart';

class DataManagementScreen extends StatefulWidget {
  const DataManagementScreen({super.key});

  @override
  State<DataManagementScreen> createState() => _DataManagementScreenState();
}

class _DataManagementScreenState extends State<DataManagementScreen> {
  String _retentionPeriod = "30 Days";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StorageManagementService>().refresh();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final storageService = context.watch<StorageManagementService>();
    final storage = storageService.currentStorage;
    
    final bgColor = theme.colorScheme.surface;
    final cardColor = theme.colorScheme.surfaceContainerHighest;
    final accentColor = theme.colorScheme.primary;
    final textSecondary = theme.colorScheme.onSurfaceVariant;
    final errorRed = theme.colorScheme.error;
    final t = Translations.of(context);

    const double totalCapacityGB = 10.0;
    final double usedGB = storage.totalGB;
    final double freeGB = totalCapacityGB - usedGB;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: IconButton(
            icon: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: theme.colorScheme.onSurface.withValues(alpha: 0.05),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.arrow_back, color: accentColor, size: 20),
            ),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          t.data.appBar,
          style: GoogleFonts.notoSans(
            color: accentColor,
            fontSize: 24,
            fontWeight: FontWeight.w800,
            height: 1.1,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh, color: accentColor),
            onPressed: () => storageService.refresh(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle(t.data.summary, accentColor),
            const SizedBox(height: 20),
            // Storage Summary Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: theme.colorScheme.onSurface.withValues(alpha: 0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.notoSans(
                        color: theme.colorScheme.onSurface,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -0.5,
                      ),
                      children: [
                        TextSpan(text: t.data.totalUsed),
                        TextSpan(
                          text: "${usedGB.toStringAsFixed(2)} GB / ${totalCapacityGB.toInt()} GB",
                          style: GoogleFonts.notoSans(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Dynamic Segmented Bar
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 14,
                      child: Row(
                        children: [
                          // Model Segment
                          if (storage.modelBytes > 0)
                            _buildBarSegment(
                              flex: (storage.modelBytes * 100 ~/ (totalCapacityGB * 1024 * 1024 * 1024)).clamp(1, 100), 
                              color: theme.colorScheme.primary,
                            ),
                          // Pillar Segments
                          ...storage.pillarInfo.where((p) => p.bytes > 1024).map((p) => _buildBarSegment(
                            flex: (p.bytes * 100 ~/ (totalCapacityGB * 1024 * 1024 * 1024)).clamp(1, 100),
                            color: _getPillarColor(p.name),
                          )),
                          // Free Space Segment
                          if (freeGB > 0)
                            _buildBarSegment(
                              flex: (freeGB * 100 ~/ totalCapacityGB).clamp(1, 100), 
                              color: theme.colorScheme.onSurface.withValues(alpha: 0.1),
                            ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 28),
                  // Legend Grid
                  _buildLegendGrid(storage),
                ],
              ),
            ),

            const SizedBox(height: 40),
            _buildSectionTitle(t.data.mgmt, accentColor),
            const SizedBox(height: 20),
            // Model Management Card
            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: theme.colorScheme.onSurface.withValues(alpha: 0.05)),
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
                          color: theme.colorScheme.onSurface.withValues(alpha: 0.05),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(Icons.crop_square_rounded, color: accentColor, size: 24),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              t.data.deleteModels,
                              style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              t.data.deleteModelsSub,
                              style: GoogleFonts.notoSans(color: textSecondary, fontSize: 15, height: 1.5),
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
                        side: BorderSide(color: errorRed.withValues(alpha: 0.2)),
                        padding: const EdgeInsets.symmetric(vertical: 18),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            t.data.selectDelete,
                            style: GoogleFonts.notoSans(color: errorRed, fontSize: 14, fontWeight: FontWeight.w800, letterSpacing: 1.5),
                          ),
                          const SizedBox(width: 10),
                          Icon(Icons.arrow_forward_ios, color: errorRed, size: 16),
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
                border: Border.all(color: theme.colorScheme.onSurface.withValues(alpha: 0.05)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    t.data.autoDelete,
                    style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    t.data.autoDeleteSub,
                    style: GoogleFonts.notoSans(color: textSecondary, fontSize: 15),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: theme.colorScheme.onSurface.withValues(alpha: 0.1)),
                    ),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: _retentionPeriod,
                        dropdownColor: theme.colorScheme.surfaceContainerHighest,
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down, color: textSecondary),
                        items: ["7 Days", "30 Days", "90 Days", "Never"].map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value, style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 16, fontWeight: FontWeight.w500)),
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
            _buildSectionTitle(t.data.modes, accentColor),
            const SizedBox(height: 20),
            // Dynamic Pillar Cards
            ...storage.pillarInfo.where((p) => p.bytes > 0).map((p) => Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: _buildPillarCard(
                context: context,
                title: p.name,
                space: (p.bytes / (1024 * 1024)).toStringAsFixed(1),
                instances: 0, // In future, fetch actual session count
                retention: "30",
                cardColor: cardColor,
                accentColor: accentColor,
                textSecondary: textSecondary,
                errorRed: errorRed,
              ),
            )),
            
            if (storage.pillarInfo.every((p) => p.bytes == 0))
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Center(
                  child: Text(
                    t.data.noData,
                    style: GoogleFonts.notoSans(color: textSecondary),
                  ),
                ),
              ),

            const SizedBox(height: 60),
            // Global Delete Action
            Center(
              child: Column(
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: theme.colorScheme.error.withValues(alpha: 0.1),
                      side: const BorderSide(color: Colors.transparent),
                      padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 20),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.warning_amber_rounded, color: errorRed, size: 26),
                        const SizedBox(width: 14),
                        Text(
                          t.data.deleteAll,
                          style: GoogleFonts.notoSans(color: errorRed, fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.lock_outline, color: textSecondary, size: 16),
                      const SizedBox(width: 10),
                      Text(
                        t.data.authReq,
                        style: GoogleFonts.notoSans(color: textSecondary.withValues(alpha: 0.7), fontSize: 13, fontWeight: FontWeight.w500),
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
    );
  }

  Widget _buildSectionTitle(String title, Color color) {
    return Row(
      children: [
        Container(
          width: 32,
          height: 1.5,
          color: color.withValues(alpha: 0.3),
        ),
        const SizedBox(width: 14),
        Text(
          title,
          style: GoogleFonts.notoSans(
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

  Widget _buildLegendGrid(StorageInfo info) {
    return Column(
      children: [
        _buildLegendRow([
          _LegendItem(t.data.legendModel, Theme.of(context).colorScheme.primary, bytes: info.modelBytes),
          _LegendItem(t.data.legendFree, Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.1), bytes: (10.0 * 1024 * 1024 * 1024).toInt() - info.totalBytes),
        ]),
        const SizedBox(height: 16),
        ..._chunkPillars(info.pillarInfo, 2).map((chunk) => Column(
          children: [
            _buildLegendRow(chunk.map((p) => _LegendItem(p.name, _getPillarColor(p.name), bytes: p.bytes)).toList()),
            const SizedBox(height: 16),
          ],
        )),
      ],
    );
  }

  List<List<T>> _chunkPillars<T>(List<T> list, int size) {
    List<List<T>> chunks = [];
    for (var i = 0; i < list.length; i += size) {
      chunks.add(list.sublist(i, i + size > list.length ? list.length : i + size));
    }
    return chunks;
  }

  Color _getPillarColor(String name) {
    switch (name) {
      case "General": return const Color(0xFFF87171);
      case "Operational": return const Color(0xFFFB923C);
      case "Personal Counsel": return const Color(0xFFFACC15);
      case "Workplace": return const Color(0xFF4ADE80);
      case "Culture & Family": return const Color(0xFF22D3EE);
      case "Daily Journal": return const Color(0xFF94A3B8);
      default: return const Color(0xFF64748B);
    }
  }

  IconData _getPillarIcon(String name) {
    switch (name) {
      case "General": return Icons.chat_bubble_outline;
      case "Operational": return Icons.auto_awesome_outlined;
      case "Personal Counsel": return Icons.face_retouching_natural_outlined;
      case "Workplace": return Icons.work_outline;
      case "Culture & Family": return Icons.groups_outlined;
      case "Daily Journal": return Icons.edit_note_outlined;
      default: return Icons.psychology_outlined;
    }
  }

  Widget _buildLegendRow(List<_LegendItem> items) {
    final theme = Theme.of(context);
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
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.label,
                    style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 13, fontWeight: FontWeight.w500),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "${(item.bytes / (1024 * 1024)).toStringAsFixed(1)} MB",
                    style: GoogleFonts.notoSans(color: theme.colorScheme.onSurfaceVariant, fontSize: 10),
                  ),
                ],
              ),
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
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: theme.colorScheme.onSurface.withValues(alpha: 0.05)),
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
                  color: theme.colorScheme.onSurface.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Icon(_getPillarIcon(title), color: theme.colorScheme.primary, size: 28),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 18, fontWeight: FontWeight.bold, height: 1.2),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(t.data.space, style: GoogleFonts.notoSans(color: textSecondary, fontSize: 11)),
                            Text("$space MB", style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 13, fontWeight: FontWeight.w700)),
                          ],
                        ),
                        const SizedBox(width: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(t.data.activeInstances, style: GoogleFonts.notoSans(color: textSecondary, fontSize: 11)),
                            Text("$instances", style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 13, fontWeight: FontWeight.w700)),
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
                    Text(t.data.viewChats, style: GoogleFonts.notoSans(color: theme.colorScheme.onSurface, fontSize: 15, fontWeight: FontWeight.w600)),
                    const SizedBox(width: 6),
                    Icon(Icons.chevron_right, color: theme.colorScheme.onSurface, size: 20),
                  ],
                ),
              ),
              const SizedBox(width: 16),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: errorRed.withValues(alpha: 0.2)),
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                child: Text(t.data.deleteAllPillar, style: GoogleFonts.notoSans(color: errorRed, fontSize: 15, fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _LegendItem {
  final String label;
  final Color color;
  final int bytes;
  _LegendItem(this.label, this.color, {required this.bytes});
}
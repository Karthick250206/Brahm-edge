import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/storage_management_service.dart';

class ModelDeletionScreen extends StatefulWidget {
  const ModelDeletionScreen({super.key});

  @override
  State<ModelDeletionScreen> createState() => _ModelDeletionScreenState();
}

class _ModelDeletionScreenState extends State<ModelDeletionScreen> {
  final Set<String> _selectedPaths = {};

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<StorageManagementService>().refresh();
    });
  }

  Future<void> _deleteSelectedModels() async {
    final storageService = context.read<StorageManagementService>();
    final pathsToDelete = _selectedPaths.toList();
    
    try {
      for (var path in pathsToDelete) {
        await storageService.deleteModelFile(path);
      }
      setState(() {
        _selectedPaths.clear();
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Selected models deleted successfully"),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Error deleting models: $e"),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  String _formatDate(DateTime date) {
    final months = ["JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"];
    return "${date.day} ${months[date.month - 1]} ${date.year}";
  }

  String _formatSize(int bytes) {
    if (bytes >= 1024 * 1024 * 1024) {
      return "${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB";
    }
    return "${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB";
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final storageService = context.watch<StorageManagementService>();
    final models = storageService.currentStorage.modelDetails;

    final bgColor = theme.scaffoldBackgroundColor;
    final cardColor = theme.colorScheme.surfaceContainerHighest.withValues(alpha: 0.3);
    final accentColor = theme.colorScheme.primary;
    final textSecondary = theme.colorScheme.onSurfaceVariant;
    final errorRed = theme.colorScheme.error;

    int selectedCount = _selectedPaths.length;
    double totalSizeGB = models
        .where((m) => _selectedPaths.contains(m.path))
        .fold(0.0, (sum, m) => sum + (m.bytes / (1024 * 1024 * 1024)));

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
          "Select models to delete",
          style: TextStyle(color: theme.colorScheme.onSurface, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 10),
            child: Row(
              children: [
                Container(width: 30, height: 1.5, color: accentColor.withValues(alpha: 0.3)),
                const SizedBox(width: 10),
                Text(
                  "INSTALLED MODELS",
                  style: TextStyle(color: accentColor, fontSize: 11, fontWeight: FontWeight.w900, letterSpacing: 1.5),
                ),
              ],
            ),
          ),
          Expanded(
            child: models.isEmpty
                ? Center(
                    child: Text(
                      "No models installed",
                      style: TextStyle(color: textSecondary),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                    itemCount: models.length,
                    itemBuilder: (context, index) {
                      final model = models[index];
                      final isSelected = _selectedPaths.contains(model.path);
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (isSelected) {
                                _selectedPaths.remove(model.path);
                              } else {
                                _selectedPaths.add(model.path);
                              }
                            });
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: cardColor,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: isSelected ? accentColor.withValues(alpha: 0.3) : theme.colorScheme.outline.withValues(alpha: 0.1),
                              ),
                            ),
                            child: Row(
                              children: [
                                Checkbox(
                                  value: isSelected,
                                  activeColor: accentColor,
                                  checkColor: theme.colorScheme.onPrimary,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                                  onChanged: (val) {
                                    setState(() {
                                      if (val!) {
                                        _selectedPaths.add(model.path);
                                      } else {
                                        _selectedPaths.remove(model.path);
                                      }
                                    });
                                  },
                                ),
                                const SizedBox(width: 12),
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onSurface.withValues(alpha: 0.05),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Icon(Icons.psychology_rounded, color: accentColor, size: 24),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        model.name,
                                        style: TextStyle(color: theme.colorScheme.onSurface, fontSize: 18, fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 8),
                                      Row(
                                        children: [
                                          _buildInfoColumn("SIZE", _formatSize(model.bytes), textSecondary, theme.colorScheme.onSurface),
                                          const SizedBox(width: 24),
                                          _buildInfoColumn("INSTALLED", _formatDate(model.installedDate), textSecondary, theme.colorScheme.onSurface),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          // Bottom Action Area
          Container(
            padding: const EdgeInsets.fromLTRB(24, 20, 24, 40),
            decoration: BoxDecoration(
              color: bgColor,
              border: Border(top: BorderSide(color: theme.colorScheme.outline.withValues(alpha: 0.1))),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: theme.colorScheme.onSurface),
                    children: [
                      TextSpan(text: "● ", style: TextStyle(color: Color(0xFFF87171))),
                      TextSpan(text: "$selectedCount models selected "),
                      TextSpan(text: "(${totalSizeGB.toStringAsFixed(1)} GB total)"),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: selectedCount > 0 ? _deleteSelectedModels : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: errorRed,
                      foregroundColor: theme.colorScheme.onError,
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      disabledBackgroundColor: errorRed.withValues(alpha: 0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.delete_outline),
                        SizedBox(width: 10),
                        Text(
                          "Delete selected models",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
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

  Widget _buildInfoColumn(String label, String value, Color labelColor, Color valueColor) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(color: labelColor, fontSize: 10, fontWeight: FontWeight.bold)),
        Text(value, style: TextStyle(color: valueColor, fontSize: 11, fontWeight: FontWeight.w600)),
      ],
    );
  }
}

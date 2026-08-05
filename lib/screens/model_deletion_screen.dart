import 'package:flutter/material.dart';

class ModelDeletionScreen extends StatefulWidget {
  const ModelDeletionScreen({super.key});

  @override
  State<ModelDeletionScreen> createState() => _ModelDeletionScreenState();
}

class _ModelDeletionScreenState extends State<ModelDeletionScreen> {
  final List<Map<String, dynamic>> _models = [
    {
      "name": "Brahm-edge 2B",
      "size": "1.8 GB",
      "date": "15 OCT 2023",
      "selected": true,
    },
    {
      "name": "Brahm-edge 5B",
      "size": "4.2 GB",
      "date": "28 OCT 2023",
      "selected": true,
    },
  ];

  void _deleteSelectedModels() {
    setState(() {
      _models.removeWhere((model) => model['selected'] == true);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Selected models deleted successfully"),
        backgroundColor: Colors.green,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bgColor = Color(0xFF0B1019);
    const cardColor = Color(0xFF161B22);
    const accentColor = Color(0xFF4FD1C5);
    const textSecondary = Color(0xFF94A3B8);
    const errorRed = Color(0xFFB91C1C);

    int selectedCount = _models.where((m) => m['selected'] == true).length;
    double totalSize = _models
        .where((m) => m['selected'] == true)
        .fold(0.0, (sum, m) => sum + double.parse(m['size'].split(' ')[0]));

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Select models to delete",
          style: TextStyle(color: accentColor, fontSize: 22, fontWeight: FontWeight.bold),
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
                const Text(
                  "INSTALLED MODELS",
                  style: TextStyle(color: accentColor, fontSize: 11, fontWeight: FontWeight.w900, letterSpacing: 1.5),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              itemCount: _models.length,
              itemBuilder: (context, index) {
                final model = _models[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: InkWell(
                    onTap: () => setState(() => model['selected'] = !model['selected']),
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: model['selected'] ? accentColor.withValues(alpha: 0.3) : Colors.white.withValues(alpha: 0.05),
                        ),
                      ),
                      child: Row(
                        children: [
                          Checkbox(
                            value: model['selected'],
                            activeColor: accentColor,
                            checkColor: bgColor,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                            onChanged: (val) => setState(() => model['selected'] = val!),
                          ),
                          const SizedBox(width: 12),
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: const Color(0xFF1C2431),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: const Icon(Icons.psychology_rounded, color: accentColor, size: 24),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  model['name'],
                                  style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(height: 8),
                                _buildInfoColumn("SIZE: ${model['size']}", textSecondary),
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
              border: Border(top: BorderSide(color: Colors.white.withValues(alpha: 0.05))),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(text: "● ", style: TextStyle(color: Color(0xFFF87171))),
                      TextSpan(text: "$selectedCount models selected ", style: const TextStyle(color: Colors.white)),
                      TextSpan(text: "(${totalSize.toStringAsFixed(1)} GB total)", style: const TextStyle(color: Colors.white)),
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
                      padding: const EdgeInsets.symmetric(vertical: 18),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                      disabledBackgroundColor: errorRed.withValues(alpha: 0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.delete_outline, color: Colors.white),
                        SizedBox(width: 10),
                        Text(
                          "Delete selected models",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
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
      bottomNavigationBar: _buildBottomNav(bgColor, textSecondary),
    );
  }

  Widget _buildInfoColumn(String text, Color color) {
    List<String> parts = text.split(': ');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(parts[0], style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold)),
        Text(parts[1], style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.w600)),
      ],
    );
  }

  Widget _buildBottomNav(Color bgColor, Color textSecondary) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        border: Border(top: BorderSide(color: Colors.white.withValues(alpha: 0.1), width: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(Icons.home_outlined, "HOME", textSecondary),
            _buildNavItem(Icons.chat_bubble_outline, "CHAT", textSecondary),
            _buildNavItem(Icons.grid_view, "LIBRARY", textSecondary),
            _buildNavItem(Icons.person, "YOU", const Color(0xFF4FD1C5)),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, Color color) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: color, size: 24),
        const SizedBox(height: 4),
        Text(label, style: TextStyle(color: color, fontSize: 10, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

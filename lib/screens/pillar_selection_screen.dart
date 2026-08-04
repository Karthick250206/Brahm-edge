import 'package:flutter/material.dart';
import 'promise_screen.dart';

/// [PillarSelectionScreen] provides an interactive selection checklist screen during onboarding,
/// allowing users to choose their privacy and application use-case pillars (e.g., Personal counsel,
/// Workplace, Culture & family, Daily journal) which shapes how BrahmAI handles sessions.
class PillarSelectionScreen extends StatefulWidget {
  const PillarSelectionScreen({super.key});

  @override
  State<PillarSelectionScreen> createState() => _PillarSelectionScreenState();
}

class _PillarSelectionScreenState extends State<PillarSelectionScreen> {
  // Using a set to allow multiple selections ("Pick any")
  final Set<int> selectedIndices = {4}; // Default: Daily journal pre-selected

  // Master configuration list for the privacy/usage pillars
  final List<Map<String, dynamic>> pillars = [
    {
      "id": 1,
      "title": "Operational",
      "subtitle": "Defence · intel · no-net zones",
      "locked": true,
      "tag": "LOCKED"
    },
    {
      "id": 2,
      "title": "Personal counsel",
      "subtitle": "Mental health · addiction · abuse",
      "locked": false,
    },
    {
      "id": 3,
      "title": "Workplace",
      "subtitle": "Harassment · reputation · ethics",
      "locked": false,
    },
    {
      "id": 4,
      "title": "Culture & family",
      "subtitle": "Grief · body · social pressure",
      "locked": false,
    },
    {
      "id": 5,
      "title": "Daily journal",
      "subtitle": "Decisions · relationships · life",
      "locked": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F0),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // Back Navigation Button
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios, size: 20),
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
              ),
              const SizedBox(height: 32),

              // Main Custom Headline Title ("What will you use it for?")
              const Text(
                "What will you\nuse it for?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  fontFamily: 'Serif',
                ),
              ),
              const SizedBox(height: 16),

              // Descriptive Subtext instructions
              Text(
                "Pick any. Each shapes how BrahmAI listens.",
                style: TextStyle(
                  color: Colors.grey.shade700,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 24),

              // Visual Progress Line Indicator Bar
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 4,
                    color: Colors.grey.shade300,
                  ),
                  Container(
                    width: 180, // Progress metric fill length
                    height: 4,
                    color: Colors.orange.shade800,
                  ),
                ],
              ),
              const SizedBox(height: 32),

              // Scrollable List of Pillars
              Expanded(
                child: ListView.builder(
                  itemCount: pillars.length,
                  itemBuilder: (context, index) {
                    final pillar = pillars[index];
                    final isSelected = selectedIndices.contains(index);
                    final isLocked = pillar["locked"] == true;

                    return GestureDetector(
                      onTap: isLocked
                          ? null
                          : () {
                        setState(() {
                          if (isSelected) {
                            selectedIndices.remove(index);
                          } else {
                            selectedIndices.add(index);
                          }
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: isSelected ? const Color(0xFFEBEBE0) : Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: isSelected ? Colors.orange.shade200 : Colors.grey.shade200,
                          ),
                        ),
                        child: Row(
                          children: [
                            // Identifier Number Circle Indicator
                            Container(
                              width: 28,
                              height: 28,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isSelected ? const Color(0xFFE67E22) : Colors.grey.shade200,
                              ),
                              child: Center(
                                child: Text(
                                  pillar["id"].toString(),
                                  style: TextStyle(
                                    color: isSelected ? Colors.white : Colors.grey.shade600,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 16),

                            // Pillar Title and Subtitle Text Column
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        pillar["title"],
                                        style: TextStyle(
                                          color: isLocked ? Colors.grey.shade400 : Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      if (isLocked) ...[
                                        const SizedBox(width: 8),
                                        Text(
                                          pillar["tag"],
                                          style: TextStyle(
                                            color: Colors.orange.shade300,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    pillar["subtitle"],
                                    style: TextStyle(
                                      color: isLocked ? Colors.grey.shade300 : Colors.grey.shade500,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Checkbox indicator for active items
                            if (!isLocked)
                              Container(
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  color: isSelected ? const Color(0xFFE67E22) : Colors.transparent,
                                  borderRadius: BorderRadius.circular(6),
                                  border: Border.all(
                                    color: isSelected ? const Color(0xFFE67E22) : Colors.grey.shade300,
                                    width: 1.5,
                                  ),
                                ),
                                child: isSelected
                                    ? const Icon(Icons.check, size: 16, color: Colors.white)
                                    : null,
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),

              // Primary Full-Width Action Button to Complete Onboarding
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: selectedIndices.isEmpty
                      ? null
                      : () {
                    // Proceed to the Promise Screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PromiseScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFE67E22),
                    foregroundColor: Colors.white,
                    disabledBackgroundColor: Colors.orange.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
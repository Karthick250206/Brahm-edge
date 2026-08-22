import 'package:flutter/material.dart';
import '../models/prompt_model.dart';
import '../services/database_service.dart';

class PromptProvider extends ChangeNotifier {
  final DatabaseService _dbService = DatabaseService();
  List<Prompt> _prompts = [];

  List<Prompt> get prompts => List.unmodifiable(_prompts);

  PromptProvider() {
    _loadPrompts();
  }

  Future<void> _loadPrompts() async {
    final data = await _dbService.getPrompts();
    _prompts = data.map((map) => Prompt.fromMap(map)).toList();
    notifyListeners();
  }

  Future<void> addPrompt(String title, String text, {List<String> pillars = const []}) async {
    final prompt = Prompt(
      title: title,
      text: text,
      timestamp: DateTime.now(),
      associatedPillars: pillars,
    );
    final id = await _dbService.insertPrompt(prompt.toMap());
    _prompts.insert(0, prompt.copyWith(id: id));
    notifyListeners();
  }

  Future<void> deletePrompt(int id) async {
    await _dbService.deletePrompt(id);
    _prompts.removeWhere((p) => p.id == id);
    notifyListeners();
  }

  Future<void> toggleFavorite(Prompt prompt) async {
    if (prompt.id == null) return;
    final newFavoriteStatus = !prompt.isFavorite;
    await _dbService.updatePromptFavorite(prompt.id!, newFavoriteStatus);
    
    final index = _prompts.indexWhere((p) => p.id == prompt.id);
    if (index != -1) {
      _prompts[index] = _prompts[index].copyWith(isFavorite: newFavoriteStatus);
      notifyListeners();
    }
  }

  Future<void> refresh() => _loadPrompts();
}

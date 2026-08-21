import 'package:flutter/material.dart';
import '../i18n/strings.g.dart';

class LlmModel {
  final String id;
  final String name;
  final String fileName;
  final String description;
  final String size;
  final String downloadUrl;
  final String specs;
  final String toks;
  final String ttft;
  final String langs;

  LlmModel({
    required this.id,
    required this.name,
    required this.fileName,
    required this.description,
    required this.size,
    required this.downloadUrl,
    required this.specs,
    required this.toks,
    required this.ttft,
    required this.langs,
  });
}

class ModelDiscoveryService {
  static final ModelDiscoveryService _instance = ModelDiscoveryService._internal();
  factory ModelDiscoveryService() => _instance;
  ModelDiscoveryService._internal();

  List<LlmModel> getAvailableModels(Translations t) {
    return [
      LlmModel(
        id: "brahm_2b",
        name: "Brahm AI - 2B",
        fileName: "gemma-4-E2B-it.litertlm",
        description: t.model_mgmt.brahm_2b_desc,
        size: "1.4 GB",
        downloadUrl: "https://huggingface.co/litert-community/gemma-4-E2B-it-litert-lm/resolve/main/gemma-4-E2B-it.litertlm?download=true",
        specs: t.modelDownload.modelSpecs,
        toks: t.modelDownload.toks,
        ttft: t.modelDownload.ttft,
        langs: t.modelDownload.langs,
      ),
      LlmModel(
        id: "brahm_5b",
        name: "Brahm AI - 5B",
        fileName: "brahm_5b.bin",
        description: t.model_mgmt.brahm_5b_desc,
        size: "3.2 GB",
        downloadUrl: "", // Placeholder
        specs: "5.0 B params · Q4_K_M · v0.9",
        toks: "~12 tok/s",
        ttft: "~220 ms TTFT",
        langs: "14 languages",
      ),
    ];
  }
}

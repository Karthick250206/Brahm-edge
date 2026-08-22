class Prompt {
  final int? id;
  final String title;
  final String text;
  final bool isFavorite;
  final List<String> associatedPillars;
  final DateTime timestamp;

  Prompt({
    this.id,
    required this.title,
    required this.text,
    this.isFavorite = false,
    this.associatedPillars = const [],
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return {
      if (id != null) 'id': id,
      'title': title,
      'text': text,
      'isFavorite': isFavorite ? 1 : 0,
      'associatedPillars': associatedPillars.join(','),
      'timestamp': timestamp.millisecondsSinceEpoch,
    };
  }

  factory Prompt.fromMap(Map<String, dynamic> map) {
    return Prompt(
      id: map['id'] as int?,
      title: map['title'] as String,
      text: map['text'] as String,
      isFavorite: (map['isFavorite'] as int) == 1,
      associatedPillars: (map['associatedPillars'] as String).isEmpty 
          ? [] 
          : (map['associatedPillars'] as String).split(','),
      timestamp: DateTime.fromMillisecondsSinceEpoch(map['timestamp'] as int),
    );
  }

  Prompt copyWith({
    int? id,
    String? title,
    String? text,
    bool? isFavorite,
    List<String>? associatedPillars,
    DateTime? timestamp,
  }) {
    return Prompt(
      id: id ?? this.id,
      title: title ?? this.title,
      text: text ?? this.text,
      isFavorite: isFavorite ?? this.isFavorite,
      associatedPillars: associatedPillars ?? this.associatedPillars,
      timestamp: timestamp ?? this.timestamp,
    );
  }
}

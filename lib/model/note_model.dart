// The note class represents a note with fields like id, title, content, and timestamps.
class Note {
  int? id;
  String title;
  String content;
  DateTime createdAt;
  DateTime updatedAt;

  // Constructor for creating a new Note object.
  Note({
    this.id,
    required this.title,
    required this.content,
    DateTime? createdAt,
    DateTime? updatedAt,
})    : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now();

  // Converts the Note object into a Map for storage or database operations
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'updatedAt': updatedAt.toIso8601String(),
    };
  }

  // Creates a Note object from a Map
  factory Note.fromMap(Map<String, dynamic> map) {
    return Note(
      id: map['id'],
      title: map['title'],
      content: map['content'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  // Returns a new Note object with updated fields, if provided
  Note copyWith({
    int? id,
    String? title,
    String? content,
    DateTime? createdAt,
    DateTime? updatedAt,
}) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  //Returns teh createdAt field as a formatted string
  String get formattedCreatedAt {
    return '${createdAt.day}/${createdAt.month}/${createdAt.year} ${createdAt.hour}:${createdAt.minute}';
  }

  // Returns the updateAt field as a formatted string
  String get formattedUpdateAt {
    return '${updatedAt.day}/${updatedAt.month}/${updatedAt.year} ${updatedAt.hour}:${updatedAt.minute}';
  }
}
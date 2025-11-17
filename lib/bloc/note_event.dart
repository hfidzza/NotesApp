import '../model/note_model.dart';

// Abstract base class for note events
abstract class NoteEvent {}

// Event to load the list of notes
class LoadNotes extends NoteEvent {}

// Event to add a new note
class AddNote extends NoteEvent {
  final Note note;
  AddNote(this.note);
}

// Event to update an existing note
class UpdateNote extends NoteEvent {
  final Note note;
  UpdateNote(this.note);
}

// Event to delete a note
class DeleteNote extends NoteEvent {
  final Note note;
  DeleteNote(this.note);
}
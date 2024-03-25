
import 'package:note_app/models/note_model.dart';

abstract class AddNoteStates{}

class NotesInitial extends AddNoteStates{}
class NotesLoading extends AddNoteStates{}
class NotesSuccess extends AddNoteStates{
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
class NotesError extends AddNoteStates{
  final String errorMessage;

  NotesError(this.errorMessage);

}

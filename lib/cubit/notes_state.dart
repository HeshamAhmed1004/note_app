
import 'package:note_app/models/note_model.dart';

abstract class NotesState{}

class NotesInitial extends NotesState{}
class NotesLoading extends NotesState{}
class NotesSuccess extends NotesState{
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
}
class NotesError extends NotesState{
  final String errorMessage;

  NotesError(this.errorMessage);

}

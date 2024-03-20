
abstract class AddNoteStates{}

class AddNoteInitial extends AddNoteStates{}
class AddNoteLoading extends AddNoteStates{}
class AddNoteSuccess extends AddNoteStates{}
class AddNoteError extends AddNoteStates{
  final String errorMessage;

  AddNoteError(this.errorMessage);

}

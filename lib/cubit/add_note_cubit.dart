import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';
class AddNoteCubit extends Cubit<AddNoteStates>{
  AddNoteCubit() :super (AddNoteInitial());

  addNote(NoteModel note) async{
    emit(AddNoteLoading());
  try {
    var notesBox=Hive.box<NoteModel>(kNotesBox);
    await notesBox.add(note);
    emit(AddNoteSuccess());
  } catch (e) {
    emit(AddNoteError(e.toString()));
  }
  }

}
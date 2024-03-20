import 'package:bloc/bloc.dart';
import 'package:note_app/cubit/add_note_state.dart';
class AddNoteCubit extends Cubit<AddNoteStates>{
  AddNoteCubit() :super (AddNoteInitial());

}
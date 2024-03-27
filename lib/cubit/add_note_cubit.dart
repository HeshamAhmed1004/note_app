import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';
class AddNoteCubit extends Cubit<AddNoteStates>{
  AddNoteCubit() :super (AddNoteInitial());
static AddNoteCubit get(context)=>BlocProvider.of(context);
Color color=const Color(0xff15B5B0);
  addNote(NoteModel note) async{
    emit(AddNoteLoading());
  try {
    note.color=color.value;
    var notesBox=Hive.box<NoteModel>(kNotesBox);
    await notesBox.add(note);
    emit(AddNoteSuccess());
  } catch (e) {
    emit(AddNoteError(e.toString()));
  }
  }

}
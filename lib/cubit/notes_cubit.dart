import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  static NotesCubit get(context) => BlocProvider.of(context);
  List<NoteModel> ?notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
  }
}

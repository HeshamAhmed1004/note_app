import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/bloc_observer.dart';
import 'package:note_app/constant.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/notes_views.dart';

void main() async{
  Bloc.observer = MyBlocObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
      home: const NotesView(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_app_bar.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String ? title,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              widget.note.title=title?? widget.note.title;
              widget.note.subTitle=content?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              NotesCubit.get(context).fetchAllNotes();
            },
          ),
          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onChanged: (value) {
              title=value;
            },

            hint: widget.note.title,
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content=value;
            },
            hint:widget.note.subTitle,
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

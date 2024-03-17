
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(bottom: 8),
          child: NoteItem(),
        ),
        physics: const BouncingScrollPhysics(),

      ),
    );
  }
}



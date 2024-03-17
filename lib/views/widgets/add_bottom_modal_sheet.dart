
import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddBottomModalSheet extends StatelessWidget {
  const AddBottomModalSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: const Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField(),
        ],
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app/cubit/add_note_cubit.dart';
import 'package:note_app/cubit/add_note_state.dart';
import 'package:note_app/views/widgets/add_note_form.dart';
class AddBottomModalSheet extends StatelessWidget {
  const AddBottomModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocConsumer<AddNoteCubit, AddNoteStates>(
          listener: (context, state) {
            if(state is AddNoteError)
              {
                // ignore: avoid_print
                print('failed ${state.errorMessage}');
              }
            if(state is AddNoteSuccess)
              {
                Navigator.pop(context);
              }

          },
          builder: (context, state) {
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true :false,
                child: const SingleChildScrollView(child:  AddNoteForm()));
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 50),
          CustomAppBar(title: 'Edit Note', icon: Icons.check, onPressed: () {}),
          const SizedBox(height: 50),
          const CustomTextField(hintText: 'Title'),
          const SizedBox(height: 16),
          const CustomTextField(hintText: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}

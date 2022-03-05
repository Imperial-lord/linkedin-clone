import 'package:flutter/material.dart';

import 'form_text_field.dart';

class StudentForm extends StatefulWidget {
  final TextEditingController degreeTypeController,
      graduationYearController,
      schoolNameController;
  const StudentForm(
      {required this.degreeTypeController,
      required this.graduationYearController,
      required this.schoolNameController,
      Key? key})
      : super(key: key);

  @override
  State<StudentForm> createState() => _StudentFormState();
}

class _StudentFormState extends State<StudentForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        formTextField('Degree type*', widget.degreeTypeController, context),
        formTextField(
            'Graduation year', widget.graduationYearController, context),
        formTextField('School name*', widget.schoolNameController, context),
      ],
    );
  }
}

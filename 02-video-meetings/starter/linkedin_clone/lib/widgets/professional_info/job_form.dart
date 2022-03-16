import 'package:flutter/material.dart';

import 'form_text_field.dart';

class JobForm extends StatefulWidget {
  final TextEditingController jobTitleController,
      employmentTypeController,
      recentCompanyController;
  const JobForm(
      {required this.jobTitleController,
      required this.employmentTypeController,
      required this.recentCompanyController,
      Key? key})
      : super(key: key);

  @override
  State<JobForm> createState() => _JobFormState();
}

class _JobFormState extends State<JobForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        formTextField(
            'Most recent job title*', widget.jobTitleController, context),
        formTextField(
            'Employment type', widget.employmentTypeController, context),
        formTextField(
            'Most recent company*', widget.recentCompanyController, context),
      ],
    );
  }
}

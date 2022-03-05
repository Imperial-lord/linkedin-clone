import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/initial_setup/photo_preview.dart';
import 'package:linkedin_clone/services/validations.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:linkedin_clone/widgets/professional_info/job_form.dart';
import 'package:linkedin_clone/widgets/professional_info/student_form.dart';
import 'package:provider/provider.dart';

class ProfessionalInfo extends StatefulWidget {
  const ProfessionalInfo({Key? key}) : super(key: key);
  static String id = 'professional-info';

  @override
  State<ProfessionalInfo> createState() => _ProfessionalInfoState();
}

class _ProfessionalInfoState extends State<ProfessionalInfo> {
  // Employment type
  TextEditingController jobTitleController = TextEditingController();
  TextEditingController employmentTypeController = TextEditingController();
  TextEditingController recentCompanyController = TextEditingController();

  // Student type
  TextEditingController degreeTypeController = TextEditingController();
  TextEditingController graduationYearController = TextEditingController();
  TextEditingController schoolNameController = TextEditingController();

  bool isStudent = false;

  void onPressedHandler() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);

    if (isStudent) {
      bool next = checkValidStudentDetails(degreeTypeController,
          graduationYearController, schoolNameController, context);
      userStore.setUserStudentDetails(degreeTypeController.text,
          graduationYearController.text, schoolNameController.text);
      if (next) {
        Navigator.pushNamed(context, PhotoPreview.id);
      }
    } else {
      bool next = checkValidJobDetails(jobTitleController,
          employmentTypeController, recentCompanyController, context);
      userStore.setUserJobDetails(jobTitleController.text,
          employmentTypeController.text, recentCompanyController.text);
      if (next) {
        Navigator.pushNamed(context, PhotoPreview.id);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget professionalInfoForm = isStudent
        ? StudentForm(
            degreeTypeController: degreeTypeController,
            graduationYearController: graduationYearController,
            schoolNameController: schoolNameController)
        : JobForm(
            jobTitleController: jobTitleController,
            employmentTypeController: employmentTypeController,
            recentCompanyController: recentCompanyController);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.vertical -
                  40,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icon/linkedin-word.png',
                    scale: 50,
                  ),
                  const SizedBox(height: 50),
                  Text(
                      'Your profile helps you discover people and opportunities',
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          ?.copyWith(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'I\'m a student',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.grey),
                      ),
                      const Spacer(),
                      CupertinoSwitch(
                          value: isStudent,
                          onChanged: (value) =>
                              setState(() => isStudent = value)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  professionalInfoForm,
                  const Spacer(),
                  ElevatedButton(
                    onPressed: () => onPressedHandler(),
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

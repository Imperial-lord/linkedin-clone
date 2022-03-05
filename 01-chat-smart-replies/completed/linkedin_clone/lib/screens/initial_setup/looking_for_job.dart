import 'package:flutter/material.dart';

import '../../widgets/looking_for_job/job_button.dart';

class LookingForJob extends StatefulWidget {
  const LookingForJob({Key? key}) : super(key: key);
  static String id = 'looking-for-job';

  @override
  State<LookingForJob> createState() => _LookingForJobState();
}

class _LookingForJobState extends State<LookingForJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/icon/linkedin-word.png',
                scale: 50,
              ),
              const SizedBox(height: 50),
              Text('Are you looking for a job right now?',
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              Text(
                  'We can help you prepare for your search. Your response is private to you.',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge
                      ?.copyWith(color: Colors.grey)),
              const SizedBox(height: 30),
              jobButton('Yes', context),
              const SizedBox(height: 15),
              jobButton('Now now', context),
            ],
          ),
        ),
      ),
    );
  }
}

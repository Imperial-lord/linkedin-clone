// Store all routes in a global variable

import 'package:linkedin_clone/screens/chat/chat_list.dart';
import 'package:linkedin_clone/screens/chat/chat_screen.dart';
import 'package:linkedin_clone/screens/home_management.dart';
import 'package:linkedin_clone/screens/initial_setup/confirm_location.dart';
import 'package:linkedin_clone/screens/initial_setup/login.dart';
import 'package:linkedin_clone/screens/initial_setup/looking_for_job.dart';
import 'package:linkedin_clone/screens/initial_setup/photo_preview.dart';
import 'package:linkedin_clone/screens/initial_setup/professional_info.dart';
import 'package:linkedin_clone/screens/meeting/schedule_meeting.dart';
import 'package:linkedin_clone/screens/settings/settings_screen.dart';
import 'package:linkedin_clone/screens/splash.dart';

final routes = {
  Splash.id: (context) => const Splash(),
  Login.id: (context) => const Login(),
  ConfirmLocation.id: (context) => const ConfirmLocation(),
  ProfessionalInfo.id: (content) => const ProfessionalInfo(),
  PhotoPreview.id: (context) => const PhotoPreview(),
  LookingForJob.id: (context) => const LookingForJob(),
  HomeManagement.id: (context) => const HomeManagement(),
  SettingsScreen.id: (context) => const SettingsScreen(),
  ChatList.id: (context) => const ChatList(),
  ChatScreen.id: (context) => const ChatScreen(),
  ScheduleMeeting.id: (context) => const ScheduleMeeting(),
};

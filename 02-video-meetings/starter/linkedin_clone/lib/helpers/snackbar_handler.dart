import 'package:flutter/material.dart';

class SnackBars {
  static SnackBar snackBar(String content) {
    return SnackBar(content: Text(content));
  }

  // --------------------------- Common Utils ---------------------------
  static copiedToClipboard() {
    return snackBar('Copied to clipboard');
  }

  // --------------------------- Confirm Location ---------------------------
  static addressEmpty() {
    return snackBar('Address cannot be empty');
  }

  // --------------------------- Professional Info ---------------------------
  static recentJobTitleEmpty() {
    return snackBar('Recent job title cannot be empty');
  }

  static recentCompanyEmpty() {
    return snackBar('Recent company cannot be empty');
  }

  static degreeTypeEmpty() {
    return snackBar('Degree type cannot be empty');
  }

  static schoolNameEmpty() {
    return snackBar('School name cannot be empty');
  }

  // --------------------------- Scheduled Meetings ---------------------------
  static joinMeetingTooEarly() {
    return snackBar(
        'The video meeting has not started yet. Please join at the scheduled time.');
  }
}

import 'package:flutter/material.dart';
import 'package:linkedin_clone/helpers/snackbar_handler.dart';

// --------------------------- Confirm Location ---------------------------
bool checkAddressEmpty(String address, BuildContext context) {
  if (address.isEmpty) {
    // Show SnackBar
    ScaffoldMessenger.of(context).showSnackBar(SnackBars.addressEmpty());
    return false;
  }
  return true;
}

// --------------------------- Professional Info ---------------------------
bool checkValidStudentDetails(
    TextEditingController degreeTypeController,
    TextEditingController graduationYearController,
    TextEditingController schoolNameController,
    BuildContext context) {
  if (degreeTypeController.text.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBars.degreeTypeEmpty());
    return false;
  } else if (schoolNameController.text.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBars.schoolNameEmpty());
    return false;
  }
  return true;
}

bool checkValidJobDetails(
    TextEditingController jobTitleController,
    TextEditingController employmentTypeController,
    TextEditingController recentCompanyController,
    BuildContext context) {
  if (jobTitleController.text.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBars.recentJobTitleEmpty());
    return false;
  } else if (recentCompanyController.text.isEmpty) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBars.recentCompanyEmpty());
    return false;
  }
  return true;
}

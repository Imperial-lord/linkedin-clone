class User {
  String? name, email, uid, address;
  bool? isStudent, isLookingForJob;

  // Location related
  double? latitude, longitude;
  Map get location => {'latitude': latitude, 'longitude': longitude};

  // Job details related
  String? jobTitle, employmentType, recentCompany;
  Map get jobDetails => {
        'jobTitle': jobTitle,
        'employmentType': employmentType,
        'recentCompany': recentCompany
      };

  // Student (education) details related
  String? degreeType, gradYear, schoolName;
  Map get studentDetails => {
        'degreeType': degreeType,
        'gradYear': gradYear,
        'schoolName': schoolName
      };
}

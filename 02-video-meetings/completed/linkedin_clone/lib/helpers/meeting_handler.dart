import 'dart:convert';

Codec<String, String> stringToBase64 = utf8.fuse(base64);

DateTime roundUpWithin30Minutes(DateTime d) {
  final int deltaMinute;
  if (d.minute <= 30) {
    deltaMinute = 30 - d.minute; // go to 30 minutes
  } else {
    deltaMinute = 60 - d.minute; // go to next hour
  }
  return d.add(Duration(
      milliseconds: -d.millisecond,
      microseconds: -d.microsecond,
      seconds: -d.second,
      minutes: deltaMinute));
}

DateTime getNextStartTime() {
  DateTime roundedDateTime = roundUpWithin30Minutes(DateTime.now());
  return roundedDateTime;
}

String fetchInstantMeetingUrl(String groupChatId) {
  String meetingCredentials = groupChatId;
  String encodedMeetingCredentials = stringToBase64.encode(meetingCredentials);
  return 'meet.jit.si/$encodedMeetingCredentials';
}

String fetchScheduledMeetingUrl(
    String groupChatId, String date, String time, String duration) {
  String meetingCredentials = '$groupChatId-$date-$time-$duration';
  String encodedMeetingCredentials = stringToBase64.encode(meetingCredentials);
  return 'meet.jit.si/$encodedMeetingCredentials';
}

Map fetchDetailsFromEncodedScheduledMeetingUrl(String url) {
  String decodedCredentials = (stringToBase64.decode(url.split('/')[1]));
  List details = decodedCredentials.split('-');
  Map meetingDetails = {
    'date': details[2],
    'time': details[3],
    'duration': details[4],
  };
  return meetingDetails;
}

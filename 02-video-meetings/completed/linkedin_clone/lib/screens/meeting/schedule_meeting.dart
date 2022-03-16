import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:linkedin_clone/helpers/meeting_handler.dart';
import 'package:provider/provider.dart';

import '../../helpers/chat_handler.dart';
import '../../services/validations.dart';
import '../../stores/chat_store.dart';
import '../../stores/user_store.dart';

class ScheduleMeeting extends StatefulWidget {
  const ScheduleMeeting({Key? key}) : super(key: key);
  static String id = 'schedule-meeting';

  @override
  State<ScheduleMeeting> createState() => _ScheduleMeetingState();
}

class _ScheduleMeetingState extends State<ScheduleMeeting> {
  List<String> durationList = [
    '15 minutes',
    '30 minutes',
    '1 hour',
    '1 hour 30 minutes',
    '2 hours',
    '2 hours 30 minutes',
    '3 hours',
    '3 hours 30 minutes'
  ];
  String duration = '30 minutes';
  DateFormat dateFormat = DateFormat('yMMMd');
  DateFormat timeFormat = DateFormat('jm');
  TextEditingController dateController = TextEditingController();
  TextEditingController timeController = TextEditingController();

  bool isTimeInPast = false;

  late String id, peerId, groupChatId;

  @override
  void initState() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    ChatStore chatStore = Provider.of<ChatStore>(context, listen: false);
    id = userStore.user.uid!;
    peerId = chatStore.peerId;
    groupChatId = getGroupChatId(id, peerId);
    dateController.text = dateFormat.format(DateTime.now());
    timeController.text = timeFormat.format(getNextStartTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatStore>(builder: (_, chatStore, __) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text('Create video meeting'),
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Start Date'),
                const SizedBox(height: 5),
                CupertinoTextField(
                  onTap: () async {
                    DateTime selectedDate =
                        dateFormat.parse(dateController.text);
                    final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: selectedDate,
                        firstDate: DateTime.now(),
                        lastDate: DateTime(2101));
                    if (picked != null && picked != selectedDate) {
                      FocusManager.instance.primaryFocus?.unfocus();
                      setState(() {
                        dateController.text = dateFormat.format(picked);
                      });
                    }
                  },
                  controller: dateController,
                  style: Theme.of(context).textTheme.subtitle1,
                  placeholder: 'Select start date',
                  padding: const EdgeInsets.all(15),
                  suffix: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.today),
                  ),
                ),
                const SizedBox(height: 20),
                const Text('Start Date'),
                const SizedBox(height: 5),
                CupertinoTextField(
                  onTap: () async {
                    TimeOfDay selectedTime = TimeOfDay.fromDateTime(
                        timeFormat.parse(timeController.text));
                    final TimeOfDay? picked = await showTimePicker(
                        context: context, initialTime: selectedTime);
                    if (picked != null && picked != selectedTime) {
                      FocusManager.instance.primaryFocus?.unfocus();
                      setState(() {
                        timeController.text = picked.format(context);
                        isTimeInPast = checkIfTimeInPast(picked);
                      });
                    }
                  },
                  controller: timeController,
                  style: Theme.of(context).textTheme.subtitle1,
                  placeholder: 'Select start time',
                  padding: const EdgeInsets.all(15),
                  suffix: const Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.schedule),
                  ),
                ),
                const SizedBox(height: 5),
                Visibility(
                  visible: isTimeInPast,
                  child: const Text('Cannot schedule a meeting in the past',
                      style: TextStyle(color: Colors.red)),
                ),
                const SizedBox(height: 20),
                const Text('Duration'),
                const SizedBox(height: 5),
                DropdownButton(
                  isExpanded: true,
                  value: duration,
                  onChanged: (String? value) =>
                      setState(() => duration = value!),
                  items: durationList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                const Spacer(),
                const Divider(),
                const SizedBox(height: 15),
                const Center(
                    child: Text('An email reminder will be sent to everyone')),
                const SizedBox(height: 5),
                ElevatedButton(
                    onPressed: () {
                      String meetingLinkScheduled = fetchScheduledMeetingUrl(
                          groupChatId,
                          dateController.text,
                          timeController.text,
                          duration);
                      chatStore.onSendMessage(
                          'mls-$meetingLinkScheduled', groupChatId, id);
                      Navigator.pop(context);
                    },
                    child: const Center(child: Text('Send'))),
              ],
            ),
          ),
        ),
      );
    });
  }
}

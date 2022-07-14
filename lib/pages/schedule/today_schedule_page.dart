import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodaySchedulePage extends StatefulWidget {
  const TodaySchedulePage({Key? key}) : super(key: key);

  @override
  State<TodaySchedulePage> createState() => TodaySchedulePageState();
}

class TodaySchedulePageState extends State<TodaySchedulePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String formattedDate =
        DateFormat('EEEE, dd MMMM yyyy', 'id_ID').format(DateTime.now());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 1.0,
        centerTitle: false,
        title: const Text(
          'Jadwal',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                formattedDate,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              scheduleItem(
                  'Bahasa Indonesia', '08:00 - 09:00', Colors.red[200]!),
              scheduleItem('PKN', '09:00 - 10:00', Colors.purple[200]!),
              scheduleItem(
                  'Bahasa Inggris', '10:00 - 11:00', Colors.blue[200]!),
              scheduleItem(
                  'Seni Kebudayaan', '11:00 - 12:00', Colors.green[200]!),
            ],
          ),
        ),
      ),
    );
  }

  Widget scheduleItem(String title, String subtitle, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            width: 3,
            color: color,
          ),
        ),
      ),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
      ),
    );
  }
}

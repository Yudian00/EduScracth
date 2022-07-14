import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 1.0,
        title: const Text(
          'Pengumuman',
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
              notification('13 Juli 2022',
                  'Sehubungan dengan akan berakhirnya masa liburan, maka diharapkan orang tua siswa wajib mendaftar ulang ke sekolah dengan membawa kartu siswa'),
              notification(
                '10 Juli 2022',
                'Started Notification',
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget notification(String tanggal, String pengumuman) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tanggal,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          pengumuman,
          style: const TextStyle(color: Colors.black54, height: 1.5),
        ),
        const SizedBox(
          height: 15,
        ),
        const Divider(
          thickness: 2,
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

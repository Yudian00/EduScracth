import 'package:flutter/material.dart';

class AbsencePage extends StatefulWidget {
  const AbsencePage({Key? key}) : super(key: key);

  @override
  State<AbsencePage> createState() => _AbsencePageState();
}

class _AbsencePageState extends State<AbsencePage> {
  bool isAbsence = false;

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        elevation: 0,
        title: const Text(
          'Absensi Harian',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: isAbsence
                        ? [
                            Colors.teal[300]!,
                            Colors.teal[200]!,
                          ]
                        : [
                            Colors.red[300]!,
                            Colors.red[200]!,
                          ],
                    stops: const [0.0, 1.0],
                    begin: FractionalOffset.topRight,
                    end: FractionalOffset.bottomLeft,
                    tileMode: TileMode.repeated,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      isAbsence
                          ? 'Kamu sudah abses'
                          : 'Hari ini kamu belum absen',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isAbsence = true;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            isAbsence ? 'Sudah absen' : 'Absen Sekarang',
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              CalendarDatePicker(
                onDateChanged: (DateTime value) {},
                lastDate: DateTime(2100),
                firstDate: DateTime(2000),
                initialDate: DateTime.now(),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Keterangan',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

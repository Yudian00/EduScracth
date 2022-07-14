import 'package:badges/badges.dart';
import 'package:edu_application/pages/home/components/tematik_grid.dart';
import 'package:edu_application/pages/home/components/tugas_hari_ini.dart';
import 'package:edu_application/pages/notification/notification_page.dart';
import 'package:edu_application/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: false,
        toolbarHeight: 80,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Username',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Orang Tua',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const FaIcon(
              FontAwesomeIcons.bell,
              color: Colors.black54,
            ),
            onPressed: () {
              pushNewScreen(context,
                  screen: const NotificationPage(), withNavBar: false);
            },
          ),
          IconButton(
            icon: Badge(
              badgeContent: const Text(
                '3',
                style: TextStyle(color: Colors.white),
              ),
              badgeColor: primaryColor,
              child: const FaIcon(
                FontAwesomeIcons.calendar,
                color: Colors.black54,
              ),
            ),
            onPressed: () {
              print("Pressed");
            },
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black12),
                    ),
                    hintText: 'Cari siswa atau orang tua',
                    prefixIcon: const Icon(FontAwesomeIcons.searchengin),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, mainAxisSpacing: 16),
                  children: [
                    menuIcon('Menu', FontAwesomeIcons.addressBook),
                    menuIcon('Menu', FontAwesomeIcons.algolia),
                    menuIcon('Menu', FontAwesomeIcons.shapes),
                    menuIcon('Menu', FontAwesomeIcons.codeBranch),
                    menuIcon('Menu', FontAwesomeIcons.faucet),
                    menuIcon('Menu', FontAwesomeIcons.hammer),
                    menuIcon('Menu', FontAwesomeIcons.hand),
                    menuIcon('Menu', FontAwesomeIcons.algolia),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TugasHariIni(size: size),
              const SizedBox(
                height: 20,
              ),
              const TematikGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget menuIcon(String label, IconData icon) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: primaryColor.withOpacity(0.05),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: primaryColor,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              label,
              style: GoogleFonts.poppins(),
            ),
          ],
        ),
      ),
    );
  }
}

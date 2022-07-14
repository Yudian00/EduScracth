import 'package:edu_application/pages/profile/add_profile_page.dart';
import 'package:edu_application/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 1.0,
        centerTitle: false,
        title: const Text(
          'Profil',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showAkunDialog(context);
            },
            icon: const Icon(
              Icons.add,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            accountListTile(),
            const SizedBox(
              height: 10,
            ),
            menuItem(Icons.person, 'Edit Profil'),
            menuItem(Icons.school, 'Sekolah'),
            menuItem(Icons.call, 'Hubungi Admin'),
            menuItem(Icons.settings, 'Pengaturan'),
            menuItem(Icons.exit_to_app, 'Keluar'),
          ],
        ),
      ),
    );
  }

  Widget accountListTile() {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      leading: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: primaryColor,
          shape: BoxShape.circle,
          image: DecorationImage(
            image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBzHj2lcw_YJcVtXOIeSxLR5O16J2oVycJLQ&usqp=CAU'),
            fit: BoxFit.cover,
            alignment: Alignment.topCenter,
          ),
        ),
      ),
      title: const Text(
        'Ardianto Wibowo',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: const Text('398853900'),
    );
  }

  Widget menuItem(IconData icon, String title) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        child: ListTile(
          leading: Icon(
            icon,
            color: Colors.black54,
          ),
          title: Text(
            title,
          ),
        ),
      ),
    );
  }

  showAkunDialog(BuildContext context) {
    AlertDialog alert = AlertDialog(
      title: const Text("Tambahkan Akun"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          accountListTile(),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
                pushNewScreen(context,
                    screen: const AddProfilePage(), withNavBar: false);
              },
              child: const ListTile(
                leading: Icon(Icons.add),
                title: Text('Tambahkan akun'),
              ),
            ),
          )
        ],
      ),
    );

    // show the dialog
    showDialog(
      useRootNavigator: false,
      barrierDismissible: true,
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

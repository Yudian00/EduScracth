import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => ForgotPasswordPageState();
}

class ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              height: size.height,
              width: size.width,
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'YOUR APP NAME',
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: size.width,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Lupa Passwordmu?',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Silahkan masukan username / email anda untuk mengirimkan link untuk mereset password anda',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  formField(usernameController, 'Username / Email'),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(size.width, 50)),
                    onPressed: () {},
                    child: const Center(
                      child: Text('Kirim'),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Center(
                      child: Text('Kembali'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget formField(TextEditingController controller, String label,
      {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          obscureText: isPassword,
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}

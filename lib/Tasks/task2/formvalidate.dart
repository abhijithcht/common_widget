import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test2/Tasks/task2/formvalidate2.dart';

class Validate1 extends StatefulWidget {
  const Validate1({Key? key}) : super(key: key);

  @override
  State<Validate1> createState() => _Validate1State();
}

class _Validate1State extends State<Validate1> {
  final GlobalKey<FormState> textkey = GlobalKey<FormState>();
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  void initState() {
    _username = TextEditingController();
    _password = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          systemNavigationBarColor: Colors.transparent,
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Text(
          'WALLS POP',
          style: GoogleFonts.montserrat(
            fontSize: 30,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.red.shade300,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: textkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                    right: 50,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.redAccent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blueAccent,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      labelText: 'Username *',
                      enabled: true,
                      hintText: 'Please type your Username here',
                      icon: const Icon(
                        Icons.person,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                    ),
                    maxLength: 10,
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    controller: _username,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Username cannot be empty.';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    right: 50,
                    left: 50,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.redAccent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.blueAccent,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.redAccent,
                        ),
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                      labelText: 'Password *',
                      enabled: true,
                      hintText: 'Please type your Password here',
                      icon: const Icon(
                        Icons.person,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 3,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(
                          50,
                        ),
                      ),
                    ),
                    maxLength: 10,
                    textCapitalization: TextCapitalization.words,
                    textAlign: TextAlign.center,
                    controller: _password,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Password cannot be empty.';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (textkey.currentState!.validate()) {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Validate2(
                            login: _username.text,
                            password: _password.text,
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'submit',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

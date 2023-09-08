import 'package:flutter/material.dart';
import 'package:test2/textfield/formvalidate2.dart';

class TextForm1 extends StatefulWidget {
  const TextForm1({Key? key}) : super(key: key);

  @override
  State<TextForm1> createState() => _TextForm1State();
}

class _TextForm1State extends State<TextForm1> {
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();

  @override
  void initState() {
    name = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: name,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Name should not be empty';
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      setState(() {});
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TextForm2(
                            formvalue: name.text,
                          ),
                        ),
                      );
                    }
                  },
                  child: const Text(
                    'Submit',
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

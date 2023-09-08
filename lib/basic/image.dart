import 'package:flutter/material.dart';

class Image1 extends StatefulWidget {
  const Image1({Key? key}) : super(key: key);

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
              ),
              Text(
                "images",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red.shade900,
                ),
              ),
              Image.asset(
                "assets/images/home.png",
                height: 300,
                width: 300,
              ),
              Image.network(
                "https://images.pexels.com/photos/1005058/pexels-photo-1005058.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                height: 300,
                width: 300,
              ),
              Container(
                height: 120.0,
                width: 120.0,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2,
                    color: Colors.black,
                  ),
                  color: Colors.yellow.shade50,
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/home.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

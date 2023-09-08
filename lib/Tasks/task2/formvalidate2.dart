import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Validate2 extends StatefulWidget {
  final dynamic login;
  final dynamic password;

  const Validate2({super.key, required this.login, required this.password});

  @override
  State<Validate2> createState() => _Validate2State();
}

class _Validate2State extends State<Validate2> {
  String? selectedGender;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.orange,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            systemNavigationBarColor: Colors.transparent,
            statusBarColor: Colors.transparent,
            statusBarIconBrightness: Brightness.dark,
          ),
          title: const Text(
            //TextStyle and GoogleFonts can't be used together!!!
            'WALLS POP',
            style: TextStyle(
              fontFamily: 'Amaranth',
              fontSize: 33,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red.shade300,
          foregroundColor: Colors.black,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.black,
            labelStyle: GoogleFonts.montserrat(
              fontSize: 16,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            tabs: const [
              Tab(
                icon: Icon(
                  Icons.wallpaper_rounded,
                ),
                text: 'Wallpapers',
              ),
              Tab(
                icon: Icon(
                  Icons.category_outlined,
                ),
                text: 'Categories',
              ),
              Tab(
                icon: Icon(
                  Icons.account_box_outlined,
                ),
                text: 'Account',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisCount: 2,
              childAspectRatio: 16 / 9,
              mainAxisSpacing: 30,
              children: [
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_50.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_8.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_13.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_46.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_3.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_7.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_6.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_15.jpeg',
                  ),
                ),
                Opacity(
                  opacity: 1,
                  child: Image.asset(
                    'assets/images/Internet_20230628_162034_10.jpeg',
                  ),
                ),
              ],
            ),
            CarouselSlider(
              items: [
                Card(
                  elevation: 50,
                  color: Colors.black,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_46.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  color: Colors.black,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_48.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  color: Colors.black,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_49.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  color: Colors.black,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_50.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  color: Colors.black,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_8.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  color: Colors.black,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_13.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 50,
                  color: Colors.black,
                  shadowColor: Colors.black,
                  child: Container(
                    margin: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_7.jpeg',
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
              ],
              options: CarouselOptions(
                height: 250,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(
                  milliseconds: 300,
                ),
                viewportFraction: 0.8,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Column(
                children: [
                  const Text(
                    'Please select your Gender from the list.',
                    style: TextStyle(
                      fontFamily: 'Amaranth',
                      fontSize: 20,
                    ),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: 'Male',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    title: const Text(
                      'Male',
                      style: TextStyle(
                        fontFamily: 'Amaranth',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: 'Female',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    title: const Text(
                      'Female',
                      style: TextStyle(
                        fontFamily: 'Amaranth',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: 'Transgender',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    title: const Text(
                      'Transgender',
                      style: TextStyle(
                        fontFamily: 'Amaranth',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Radio<String>(
                      value: 'Other',
                      groupValue: selectedGender,
                      onChanged: (value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      },
                    ),
                    title: const Text(
                      'Other',
                      style: TextStyle(
                        fontFamily: 'Amaranth',
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Text(
                    selectedGender == 'Male'
                        ? 'Male'
                        : selectedGender == 'Other'
                            ? 'Other'
                            : selectedGender == 'Female'
                                ? 'Female'
                                : selectedGender == 'Transgender'
                                    ? 'Transgender'
                                    : '',
                    style: const TextStyle(
                      fontFamily: 'Amaranth',
                      fontSize: 20,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                    ),
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.pinkAccent,
                      valueColor: AlwaysStoppedAnimation(
                        Colors.greenAccent,
                      ),
                      strokeWidth: 7,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 50,
                    ),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.pinkAccent,
                      valueColor: AlwaysStoppedAnimation(
                        Colors.greenAccent,
                      ),
                      minHeight: 10,
                    ),
                  ),
                  const TextField(
                    keyboardType: TextInputType.text,
                    enabled: true,
                    maxLines: 4,
                  ),
                  const ClipRect(
                    child: Align(
                      alignment: Alignment.center,
                      widthFactor: 0.5,
                      child: Image(
                        image: AssetImage(
                          'assets/images/Internet_20230628_162034_49.jpeg',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

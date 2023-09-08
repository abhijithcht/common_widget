import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSlider1 extends StatefulWidget {
  const CarouselSlider1({Key? key}) : super(key: key);

  @override
  State<CarouselSlider1> createState() => _CarouselSlider1State();
}

class _CarouselSlider1State extends State<CarouselSlider1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
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
              Container(
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
              Container(
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
              Container(
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
            ],
            options: CarouselOptions(
              height: 180,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(
                milliseconds: 800,
              ),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}

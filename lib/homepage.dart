import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> products = [
      'images/vegetable.jpeg',
      'images/plnt.jpeg',
      'images/fruits.jpeg',
      'images/tomato.jpeg',
      'images/grapes.jpeg',
      'images/orange.jpeg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Carousel Slider"),
        backgroundColor: Colors.green,
      ),
      body: SafeArea(
          child: Center(
        child: Container(
          child: CarouselSlider(
              items: products
                  .map((e) => Container(
                        child: Center(
                          child: Image.asset(e),
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                  aspectRatio: 2, autoPlay: true, enlargeCenterPage: true)),
        ),
      )),
    );
  }
}

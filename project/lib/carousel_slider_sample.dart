import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderSample extends StatefulWidget {
  const CarouselSliderSample({super.key});

  @override
  State<CarouselSliderSample> createState() => _CarouselSliderSampleState();
}

class _CarouselSliderSampleState extends State<CarouselSliderSample> {

  int _current = 0;
  final CarouselController _controller = CarouselController();
  List imageList = [
    "https://cdn.pixabay.com/photo/2014/04/14/20/11/pink-324175_1280.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/06/19/20/13/sunset-815270_1280.jpg",
    "https://cdn.pixabay.com/photo/2016/01/08/05/24/sunflower-1127174_1280.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 300,
            child: Stack(
              children: [
                sliderWidget(),
                sliderIndicator()
              ]
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text("Welcome to the carousel slider app"),
          )
        ],
        
      ),
    );
  }

  Widget sliderWidget() {
    return CarouselSlider(
      carouselController: _controller,
      items: imageList.map((imgLink) {
        return Builder(
          builder: (context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image(
                fit: BoxFit.fill,
                image: NetworkImage(
                  imgLink
                ),
              ),
            );
        });
      }).toList(), 
      options: CarouselOptions(
        height: 300,
        viewportFraction: 1.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 4),
        onPageChanged: (index, resason) {
          setState(() {
            _current = index;
          });
        }
      ));
  }

  Widget sliderIndicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: imageList.asMap().entries.map((entry) =>
        GestureDetector(
          onTap: () => _controller.animateToPage(entry.key),
          child: Container(
            width: 12,
            height: 12,
            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(_current == entry.key ? 0.9 : 0.4)
            ),
          ),
        )).toList(),
      ),
    );
  }
}
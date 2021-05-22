import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Banner extends StatefulWidget {
  @override
  _BannerState createState() => _BannerState();
}

class _BannerState extends State<Banner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16/9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: [
              Container(
                  height: 200.0,
                  width: 500.0,
                  decoration: new BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 8,
                    ),

                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ]),
                    image: DecorationImage(
                      image: AssetImage('assets/Image1.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )

              ),
              Container(
                  height: 200.0,
                  width: 500.0,
                  decoration: new BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 8,
                    ),

                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ]),
                    image: new DecorationImage(
                      image: new AssetImage('assets/Image2.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )

              ),
              Container(
                  height: 200.0,
                  width: 500.0,
                  decoration: new BoxDecoration(
                    border: Border.all(
                      color: Colors.transparent,
                      width: 8,
                    ),

                    gradient: LinearGradient(colors: [
                      Colors.blue,
                      Colors.lightBlueAccent,
                    ]),
                    image: new DecorationImage(
                      image: new AssetImage('assets/Images3.png'),
                      fit: BoxFit.fill,
                    ),
                    shape: BoxShape.rectangle,
                  )

              ),
            ],
          ),
        );
  }
}


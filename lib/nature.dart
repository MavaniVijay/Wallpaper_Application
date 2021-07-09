import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NatureScreen extends StatelessWidget {
  NatureScreen({@required this.text, @required this.image});
  final String text;
  final String image;
  static final id = "NatureScreen";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Potta",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Best Wallpaper is a Beautiful",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                    fontFamily: "Potta",
                    letterSpacing: 2),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  height: height * 0.30,
                  width: width,
                  child: ListView.builder(
                      itemExtent: 350,
                      padding: EdgeInsets.all(10),
                      physics: BouncingScrollPhysics(),
                      itemCount: list.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: height,
                            width: width * 0.40,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(image),
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        );
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Nature {
  Nature({this.images});
  String images;
}

List<Nature> list = [
  Nature(images: "nature/1.jpg"),
  Nature(images: "nature/2.jpg"),
  Nature(images: "nature/3.jpg"),
  Nature(images: "nature/4.jpg"),
  Nature(images: "nature/5.jpg"),
  Nature(images: "nature/6.jpg"),
  Nature(images: "nature/7.jpg"),
  Nature(images: "nature/8.jpg"),
  Nature(images: "nature/9.jpg"),
  Nature(images: "nature/10.jpg"),
];

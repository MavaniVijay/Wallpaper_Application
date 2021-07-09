import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:s_wallpaper_app/favorite.dart';
import 'package:s_wallpaper_app/profile.dart';

import 'content.dart';
import 'nature.dart';

class HomeScreen extends StatefulWidget {
  static String id = "HomeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavyBar(
          selectedIndex: currentIndex,
          showElevation: true, // use this to remove appBar's elevation
          onItemSelected: (index) => setState(() {
            currentIndex = index;
            // pageController.animateToPage(index,
            //     duration: Duration(milliseconds: 300), curve: Curves.ease);
          }),
          items: [
            BottomNavyBarItem(
              icon: Image.asset(
                "images/four-squares.png",
                fit: BoxFit.contain,
                height: 34,
                width: 34,
              ),
              title: Text('Home'),
              activeColor: Colors.green,
            ),
            BottomNavyBarItem(
                icon: Image.asset(
                  "images/book.png",
                  fit: BoxFit.contain,
                  height: 34,
                  width: 34,
                ),
                title: Text('Favorite'),
                activeColor: Colors.indigo),
            BottomNavyBarItem(
                icon: Image.asset(
                  "images/download.png",
                  fit: BoxFit.contain,
                  height: 34,
                  width: 34,
                ),
                title: Text('Download'),
                activeColor: Colors.blueAccent),
            BottomNavyBarItem(
                icon: Image.asset(
                  "images/profile.png",
                  fit: BoxFit.contain,
                  height: 34,
                  width: 34,
                ),
                title: Text('Profile'),
                activeColor: Colors.blueGrey),
          ],
        ),
        backgroundColor: Color(0xffDAEBF0),
        body: IndexedStack(
          index: currentIndex,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SliverAppBar(
                    //   elevation: 5,
                    //   floating: true,
                    //   flexibleSpace: Placeholder(),
                    // ),
                    TextField(
                      autofocus: false,
                      keyboardType: TextInputType.name,
                      maxLength: 20,
                      focusNode: FocusNode(),
                      decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        hintText: "Find Wallpaper",
                        suffixIcon: GestureDetector(
                          onTap: () {},
                          child: Icon(
                            Icons.search,
                            size: 30,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      style: TextStyle(),
                    ),
                    Text(
                      "Best of the month",
                      style: kTextStyle,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      color: Colors.transparent,
                      height: height * 0.30,
                      width: width,
                      child: ListView(
                        itemExtent: 200,
                        physics: BouncingScrollPhysics(),
                        children: [
                          CarouselSlider(
                              items: [
                                Container(
                                  // margin: EdgeInsets.all(),
                                  height: 20,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('wallpaper/Nature.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(),
                                  height: 20,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('wallpaper/Architect.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(),
                                  height: 20,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('wallpaper/fashion1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(),
                                  height: 20,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage('wallpaper/Film.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(),
                                  height: 20,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'wallpaper/FooodDrink.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  // margin: EdgeInsets.all(),
                                  height: 20,
                                  width: 400,
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image:
                                          AssetImage('wallpaper/travel1.jpg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                              options: CarouselOptions(
                                height: 400,
                                aspectRatio: 16 / 9,
                                viewportFraction: 0.8,
                                initialPage: 0,
                                enableInfiniteScroll: true,
                                reverse: false,
                                autoPlay: true,
                                autoPlayInterval: Duration(seconds: 3),
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enlargeCenterPage: true,
                                // onPageChanged: callbackFunction,
                                scrollDirection: Axis.horizontal,
                              )),
                        ],
                      ),
                      //child:
                    ),
                    Text(
                      "Categories",
                      style: kTextStyle,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: height * 0.40,
                      width: width,
                      color: Colors.transparent,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 4,
                            mainAxisSpacing: 4),
                        itemCount: list1.length,
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return NatureScreen(
                                    text: list1[index].text,
                                    image: list[index].images,
                                  );
                                }));
                              },
                              child: Container(
                                width: width,
                                height: height,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      Colors.black.withOpacity(0.3),
                                      BlendMode.darken,
                                    ),
                                    fit: BoxFit.cover,
                                    image: AssetImage(list1[index].image),
                                  ),
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                    child: Text(
                                  list1[index].text,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "Potta",
                                    fontStyle: FontStyle.italic,
                                    wordSpacing: 2,
                                  ),
                                )),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ), //1.
            FavoriteScreen(), //2.
            Text("Download"), //3.
            ProfileScreen(),
          ],
        ),
      ),
    );
  }
}

List<Catagories> list1 = [
  Catagories(text: "Nature", image: "wallpaper/Nature.jpg"),
  Catagories(text: "Fashion", image: "wallpaper/Fashion.jpg"),
  Catagories(text: "Food & Drinks", image: "wallpaper/FooodDrink.jpg"),
  Catagories(text: "Film", image: "wallpaper/Film.jpg"),
  Catagories(text: "Travel", image: "wallpaper/Travel.jpg"),
  Catagories(text: "Architecture", image: "wallpaper/Architect.jpg"),
];
List<BestofMonth> list2 = [
  BestofMonth(image: "wallpaper/1.jpg"),
  BestofMonth(image: "wallpaper/2.jpeg"),
  BestofMonth(image: "wallpaper/3.jpg"),
  BestofMonth(image: "wallpaper/4.jpg"),
  BestofMonth(image: "wallpaper/5.jpg"),
  BestofMonth(image: "wallpaper/6.png"),
  BestofMonth(image: "wallpaper/7.jpg"),
  BestofMonth(image: "wallpaper/8.jpg"),
];
// ListView.builder(
// physics: BouncingScrollPhysics(),
// itemCount: list2.length,
// scrollDirection: Axis.horizontal,
// itemBuilder: (context, index) {
// return Padding(
// padding: const EdgeInsets.all(8.0),
// child: Container(
// height: height,
// width: width * 0.40,
// decoration: BoxDecoration(
// image: DecorationImage(
// fit: BoxFit.cover,
// image: AssetImage(list2[index].image),
// ),
// color: Colors.white,
// borderRadius: BorderRadius.circular(20),
// ),
// ),
// );
// }),

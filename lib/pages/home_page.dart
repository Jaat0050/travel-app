import 'package:flutter/material.dart';
import 'package:travel/pages/detail_page.dart';
import 'package:travel/places/beatle_sashram.dart';
import 'package:travel/places/freedomscafe.dart';
import 'package:travel/places/laxshman_jhula.dart';
import 'package:travel/places/triveni_ghat.dart';
import 'package:travel/widgets/app_large_text.dart';
import 'package:travel/widgets/app_text.dart';

class HomePage extends StatefulWidget {

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  var images = {
    "S1.jpeg": "Rafting",
    "S2.jpeg": "Hiking",
    "S3.jpeg": "Bunjee Jumping",
    "S4.jpeg": "Camping"
  };

  List image = ["b1.png", "b2.jpg", "b3.jpeg", "b4.jpg"];

  List pages = [
    "BeatlesAashram",
    "FreedomsCafe",
    "LaxshmanJhula",
    "TriveniGhat"
  ];

  Widget? getPageWidget(String pageName) {
    // Create a mapping of page names to their respective widgets
    Map<String, Widget> pageWidgets = {
      "BeatlesAashram": BeatlesAashram(),
      "FreedomsCafe": FreedomsCafe(),
      "LaxshmanJhula": LaxshmanJhula(),
      "TriveniGhat": TriveniGhat(),
    };

    // Check if the page name exists in the mapping
    if (pageWidgets.containsKey(pageName)) {
      // Return the widget based on the page name
      return pageWidgets[pageName];
    } else {
      // Handle the case when the page name is not found
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //menu text
          Container(
            padding: const EdgeInsets.only(top: 40, left: 15, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //back button
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                //profile image
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage("images/I1.jpeg"), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(10),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //discover text
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: AppLargeText(text: "Discover"),
          ),
          const SizedBox(
            height: 20,
          ),
          //place text
          Container(
              margin: const EdgeInsets.only(left: 20),
              child: AppLargeText(
                  text: "Places", size: 20, color: Colors.black54)),
          const SizedBox(
            height: 20,
          ),
          // places view
          Container(
            padding: const EdgeInsets.only(left: 20),
            height: 300,
            width: double.maxFinite,
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Widget? pageWidget = getPageWidget(pages[index]);
                    if (pageWidget != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => pageWidget),
                      );
                    } else {
                      // Handle the case when the page widget is null
                      // You can show an error message or take appropriate action
                    }
                  },
                  child: Container(
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    width: 200,
                    height: 300,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(28),
                        color: Colors.white,
                        image: DecorationImage(
                            // ignore: prefer_interpolation_to_compose_strings
                            image: AssetImage("images/" + image[index]),
                            fit: BoxFit.cover)),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          //activities text
          Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: AppLargeText(
                text: "Activities",
                size: 30,
              )),
          const SizedBox(
            height: 30,
          ),
          //column images
          Container(
            height: 130,
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 20),
            child: ListView.builder(
              itemCount: 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(right: 30),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const DetailPage())));
                        },
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black,
                            image: DecorationImage(
                                image: AssetImage(
                                    "images/${images.keys.elementAt(index)}"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      AppText(
                        text: images.values.elementAt(index),
                        color: Colors.black,
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CircleTabIndicator extends Decoration {
  final Color color;
  double radius;
  CircleTabIndicator({required this.color, required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // ignore: todo
    // TODO: implement createBoxPainter
    return Circlepainter(color: color, radius: radius);
  }
}

class Circlepainter extends BoxPainter {
  final Color color;
  double radius;
  Circlepainter({required this.color, required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint paint = Paint();
    paint.color = color;
    paint.isAntiAlias = true;
    final Offset circleOffset = Offset(
        configuration.size!.width / 2 - radius / 2,
        configuration.size!.height - radius);

    // ignore: todo
    // TODO: implement paint
    canvas.drawCircle(offset + circleOffset, radius, paint);
  }
}

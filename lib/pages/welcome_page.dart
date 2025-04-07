import 'package:flutter/material.dart';
import 'package:travel/model/user_model.dart';
import 'package:travel/pages/navpages/main_page.dart';
import 'package:travel/widgets/app_large_text.dart';
import 'package:travel/widgets/app_text.dart';

// ignore: must_be_immutable
class WelcomePage extends StatefulWidget {
  UserModel user;
  WelcomePage(this.user, {super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "R1.jpeg",
    "R2.jpg",
    "R3.jpg",
    "R4.jpg"
  ];

  List texts = [
    "Lakshman Jhula in Rishikesh shines with colorful lights, creating a mesmerizing and spiritual ambiance for visitors",
    "A mesmerizing spectacle of colorful illumination, transforming the city into a radiant wonderland. Experience enchantment and joy",
    "Ganga Aarti is a sacred ritual performed on the banks of the Ganges River, involving prayers, chants, and lighting of lamps, symbolizing worship and reverence",
    "Rishikesh's weather dances in harmony, sun-kissed days and gentle breezes, caressed by Himalayan melodies, a blissful symphony of nature's embrace"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    // ignore: prefer_interpolation_to_compose_strings
                    "images/" + images[index],
                  ),
                  fit: BoxFit.cover),
            ),
            child: Container(
              margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppLargeText(text: "Trip",size:40,color: Colors.white),
                      const SizedBox(height: 10),
                      AppText(text: "Rishikesh",size: 25,color: Colors.white),
                      const SizedBox(height: 10),
                      SizedBox(
                        width:200,
                        // ignore: prefer_interpolation_to_compose_strings
                        child: AppText(text: "" + texts [index],size:15,color: Colors.white70,))
                    ],
                  ),
                  Column(
                    children: List.generate(
                      4,
                      (indexdots) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexdots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexdots
                                  ? Colors.white
                                  : Colors.white38),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MainPage(),
            ),
          );
        },
        backgroundColor: Colors.blueGrey[300],
        elevation: 10,
        autofocus: true,

        child: const Icon(
          Icons.double_arrow_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}

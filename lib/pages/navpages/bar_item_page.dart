import 'package:flutter/material.dart';
import 'package:travel/pages/detail_page.dart';
import 'package:travel/widgets/app_text.dart';

class BarItemPage extends StatefulWidget {
  const BarItemPage({super.key});

  @override
  State<BarItemPage> createState() => _BarItemPageState();
}

class _BarItemPageState extends State<BarItemPage> {
  var images = {
    "S1.jpeg": "Rafting",
    "S2.jpeg": "Hiking",
    "S3.jpeg": "Bunjee Jumping",
    "S4.jpeg": "Camping",
    "S5.jpeg": "Rafting",
    "S6.jpeg": "Hiking",
    "S7.jpeg": "Bunjee Jumping",
    "S8.jpeg": "Camping",
    "S9.jpeg": "Rafting",
    "S10.jpeg": "Hiking",
    "S11.jpeg": "Bunjee Jumping",
    "S12.jpeg": "Camping"
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
          title: const Text(
            "Items",
            style: TextStyle(color: Colors.black, fontSize: 25),
          ),
          backgroundColor: Colors.blueGrey[400],
          automaticallyImplyLeading: false,
          centerTitle: true),
      body: SizedBox(
        height: double.infinity,
        width: double.maxFinite,
        child: ListView.builder(
          itemCount: 12,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(top:10),
              child: GestureDetector(

                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) => const DetailPage())));
                },
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.only(left: 10,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black,
                        image: DecorationImage(
                            image: AssetImage(
                                "images/${images.keys.elementAt(index)}"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    const SizedBox(width: 20,),
                    AppText(
                      text: images.values.elementAt(index),
                      color: Colors.black,
                      size: 20,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

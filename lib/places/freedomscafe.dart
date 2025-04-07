import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FreedomsCafe extends StatelessWidget {
  FreedomsCafe({super.key});

  List image = [
    "free1.jpeg",
    "free2.jpeg",
    "free3.jpeg",
    "free4.jpeg",
    "free5.jpeg",
    "free6.jpeg",
    "free7.jpg",
    "free8.jpeg",
    "free9.jpeg",
    "free10.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Freedoms Cafe",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                padding: const EdgeInsets.only(left: 5, right: 250, top: 20),
                child: const Text("-> History",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Text(
                  "Om Freedom Cafe, Surrounded by beautiful and Serene Ganga and Himalayan peaks, is also popular to be one of the best cafes in Rishikesh. Freedom Café is one of those Cafe in Rishikesh, that has not lost its charm and have been attracting travellers for a long time. The café’s setting gives you the perfect views of Ganga, Lakshman Jhoola and The Mighty Himalayas.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Text(
                  "The yogi style cushion and communal seating space is something that you will find in many Rishikesh cafes but here the experience elevates because of lovely food and peaceful music.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 250, top: 20),
              child: const Text(
                "-> Photos",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 350,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: const EdgeInsets.only(right: 15, top: 10),
                    width: 280,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      image: DecorationImage(
                          // ignore: prefer_interpolation_to_compose_strings
                          image: AssetImage("images/" + image[index]),
                          fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
            // Container(
            //   padding: const EdgeInsets.only(left: 10, right: 280, top: 30),
            //   child: const Text(
            //     "-> Fee",
            //     style: TextStyle(
            //         color: Colors.black,
            //         fontSize: 25,
            //         fontWeight: FontWeight.bold),
            //   ),
            // ),
            // Container(
            //   padding: const EdgeInsets.only(left: 5, right: 40,top: 10),
            //   child: Text(
            //       " - Rs150 per person for Indian Citizens.\n\n - Rs75 per person for Senior Citizen.\n\n - Rs40 per person for Student (up to 18yrs).\n\n - Rs75 per person for Student (over to 18yrs).\n \n- Rs600 per person for Foreigners",
            //       style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            // ),
            Container(height: 50,width: double.infinity,)
          ],
        ),
      ),
    );
  }
}
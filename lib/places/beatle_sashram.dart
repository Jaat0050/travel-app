import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BeatlesAashram extends StatelessWidget {
  BeatlesAashram({super.key});

  List image = [
    "ash1.jpeg",
    "ash2.png",
    "ash3.jpg",
    "ash4.jpeg",
    "ash5.jpg",
    "ash6.jpg",
    "ash7.jpeg",
    "ash8.jpg",
    "ash9.jpg",
    "ash10.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Beatles Aashram",
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
                  "Formerly known as Chaurasi Kutia, Beatles Ashram happens to be a popular ashram located at Rishikesh in Uttarakhand. The place received a lot of hype and achieved wide recognition after the Beatles band of Liverpool came to stay there in the year 1986.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Text(
                  "In the later period, the ashram was left abandoned but was reopened for tourists in the year 2015.",
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
            Container(
              padding: const EdgeInsets.only(left: 10, right: 280, top: 30),
              child: const Text(
                "-> Fee",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 40,top: 10),
              child: Text(
                  " - Rs150 per person for Indian Citizens.\n\n - Rs75 per person for Senior Citizen.\n\n - Rs40 per person for Student (up to 18yrs).\n\n - Rs75 per person for Student (over to 18yrs).\n \n- Rs600 per person for Foreigners",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}

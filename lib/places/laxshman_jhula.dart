import 'package:flutter/material.dart';

// ignore: must_be_immutable
class LaxshmanJhula extends StatelessWidget {
  LaxshmanJhula({super.key});

  List image = [
    "jhu1.jpeg",
    "jhu2.jpeg",
    "jhu3.jpeg",
    "jhu4.jpeg",
    "jhu5.jpeg",
    "jhu6.jpeg",
    "jhu7.jpeg",
    "jhu8.jpeg",
    "jhu9.jpeg",
    "jhu10.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lakshman Jhula",
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
                  "Lakshman Jhula is an iron suspension bridge over the holy river Ganga at Rishikesh. A famous landmark place in Rishikesh, Lakshman Jhula is 450 feet length connecting Pauri district with Tehri district.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Text(
                  "Important places around the Lakshman Jhula include the Terah Manzil temple, the Lakshman temple, and the Ram Jhula and the entire area resonates with the sounds of the enchanting mantras and shlokas from the temple.",
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
                "-> Do",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 5, right: 40,top: 10),
              child: Text(
                  " - If you happen to visit Rishikesh, absolutely do not forget to cross the Lakshman Jhula.\n\n - On either side of the bridge, you will see markets.\n\n - Local markets are also noted for their excellent street food.\n\n - buy a variety of things including wooden goods, Rudraksha, idols of Gods and Goddesses, holy books, gems, local jewellery, clothes, semi-precious stones and other knick-knacks",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
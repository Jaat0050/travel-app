import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TriveniGhat extends StatelessWidget {
  TriveniGhat({super.key});

  List image = [
    "tri1.jpeg",
    "tri2.jpeg",
    "tri3.jpeg",
    "tri4.jpeg",
    "tri5.jpeg",
    "tri6.jpeg",
    "tri7.jpeg",
    "tri8.jpeg",
    "tri9.jpeg",
    "tri10.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Triveni Ghat",
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
                  "Triveni Ghat is a sacred ghat in Rishikesh famous for the Ganga Aarti. Triveni words comes from join of two words Tri (three) and Veni (confluence) meaning confluence of three. It is one of the biggest and must visit ghat of Rishikesh known for its auspicious and spiritual aroma.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.only(left: 10, right: 20),
              child: Text(
                  "Situated on the banks of the holy Ganges, Triveni Ghat is among the most magnetic places to visit in Rishikesh.",
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
                  " 1. Ganga Arti: To seek nirvana, come for the morning or evening Maha-aarti held every day. \n\n 2. Get healed: Triveni Ghat in Rishikesh can also be visited for the holistic development of the body.\n\n 3. Visit the market: The chaotic market of Triveni Ghat has much to offer. \n\n 4. Meditate: When you come here, you seek peace. Sitting by the ghats, indulge in meditation and peace.\n\n 6. Visit Ekam Yogshala: Visit here to get a daily dose of your yoga lessons.",
                  style: TextStyle(color: Colors.grey[600], fontSize: 17)),
            ),
            const SizedBox(height: 50,)
          ],
        ),
      ),
    );
  }
}
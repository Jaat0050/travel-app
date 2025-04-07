import 'package:flutter/material.dart';
import 'package:travel/misc/colors.dart';
import 'package:travel/widgets/app_button.dart';
import 'package:travel/widgets/app_large_text.dart';
import 'package:travel/widgets/app_text.dart';
import 'package:travel/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 4;
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Booking Page",
          style: TextStyle(color: Colors.black, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey[400],
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: 400,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/raft.jpeg"),
                      fit: BoxFit.fitHeight),
                ),
              ),
            ),
            Positioned(
              top: 250,
              child: Container(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppLargeText(
                            text: "Rafting",
                            color: Colors.black54.withOpacity(0.8)),
                        AppLargeText(
                          text: "Rs.700",
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.black54,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: "Devgiri, Rishikesh",
                          color: AppColors.mainColor,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Wrap(
                          children: List.generate(
                            5,
                            (index) {
                              return Icon(Icons.star,
                                  color: index < gottenStars
                                      ? AppColors.starColor
                                      : AppColors.mainColor);
                            },
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        AppText(
                          text: "(4.0)",
                          color: AppColors.bigTextColor,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppLargeText(
                      text: "People",
                      color: Colors.black87,
                      size: 25,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppText(
                        text: "Number of people in your group",
                        color: AppColors.bigTextColor),
                    Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          //inkwell
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: AppButton(
                                size: 50,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.black,
                                backgroundColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                borderColor: selectedIndex == index
                                    ? Colors.black
                                    : AppColors.buttonBackground,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppLargeText(
                        text: "Description",
                        color: Colors.black.withOpacity(0.8),
                        size: 25),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        children: [
                          Expanded(
                              child: SingleChildScrollView(
                                  child: AppText(
                            text:
                                "You must go for a travel. Travelling helps get rid of pressure. Go to the mountains to see the nature. ",
                            color: AppColors.textColor2,
                          ))),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 10,
              right: 10,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 19),
                    child: AppButton(
                      size: 60,
                      color: AppColors.bigTextColor,
                      backgroundColor: Colors.white,
                      borderColor: Colors.black,
                      isIcon: true,
                      icon: Icons.favorite_border,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ResponsiveButton(
                    isResponsive: true,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

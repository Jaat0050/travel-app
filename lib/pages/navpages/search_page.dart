import 'package:flutter/material.dart';
import 'package:travel/pages/navpages/main_page.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
    TextEditingController searchController = TextEditingController();
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Search Screen",
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.blueGrey[400],
        automaticallyImplyLeading: false,
      ),
      body: Row(
              children: [
                Expanded(child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "Search....",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),),)
                  ),
                )),
                IconButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>const MainPage()));
                },
                icon: const Icon(Icons.search,size: 30),
              )
              ],
            ),
    );
  }
}

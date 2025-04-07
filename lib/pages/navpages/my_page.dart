
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:travel/pages/signin_screen.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[400],
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("MyPage",style: TextStyle(color: Colors.black,fontSize: 25),),
      ),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/I1.jpeg"),fit: BoxFit.fill)
                ),
              ),
              const SizedBox(height: 20,),
              const Text("NAME - Arjun",style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),)
            ],
          ),
          const SizedBox(height: 240,),
          GestureDetector(
            onTap: () async {
              await GoogleSignIn().signOut();
              await FirebaseAuth.instance.signOut();
              Navigator.pushAndRemoveUntil(
                context, MaterialPageRoute(builder: (context)=> const SigninScreen(),), (route) => false);
            },
            child: Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(1.0)
              ),
              child: const Center(child: Text("LOGOUT",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
            ),
          )
        ],
      ),
    );
  }
}
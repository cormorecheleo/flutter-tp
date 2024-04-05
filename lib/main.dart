import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Facebook Profile'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Image.network(
                    "https://upload.wikimedia.org/wikipedia/commons/9/93/Plage_Bonneterres.JPG",
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    fit: BoxFit.cover),
                const Padding(
                  padding: EdgeInsets.only(top:100.0),
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/avatar.png"),
                      backgroundColor: Colors.grey,
                      radius: 70,
                    ),
                  ),
                ),
              ]),
              const Text("Leo", style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),),
              const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w300),)
            ],
          ),
        ),
      ),
    );
  }
}

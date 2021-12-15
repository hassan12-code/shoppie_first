import 'package:flutter/material.dart';
import 'widgets/CategoryButtons.dart';
import 'widgets/SearchField.dart';
import 'widgets/TrendingSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blueGrey.shade50,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: 
             IconButton(
            onPressed: () {},
            icon: Icon(Icons.category, color: Colors.grey,),
        ),
          actions: [ 
             IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart,color: Colors.grey),
        ),],
      ),
      body: 
      Column(
        children: [
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SearchField(),
              ],
              ),
          SizedBox(height: 10),
          Padding(
           padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                GestureDetector(
                  child: Text("See All", style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.redAccent)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Container(
              height: 50,
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 25),
                scrollDirection: Axis.horizontal,
                children: [
               categoryButtons(text: "Shoes",),
               categoryButtons(text: "Clothes"),
               categoryButtons(text: "Pants"),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left:8.0,right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Trending",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                  GestureDetector(
                  child: Text("See All",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.redAccent)),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          TrendingSection(),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 2,
              ),
              ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.house_outlined),
                  Icon(Icons.favorite_border_outlined),
                  Icon(Icons.message_outlined),
                  Icon(Icons.person),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}


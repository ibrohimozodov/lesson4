import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,



        children: [

          _itemList(image: "assets/image.jpg",title: "widget One",price: "\$339.1"),
          _itemList(image: "assets/img.png",title: "widget One",price: "\$339.1"),
          _itemList(image: "assets/img_1.png",title: "widget One",price: "\$339.1"),
          _itemList(image: "assets/image.jpg",title: "widget One",price: "\$339.1"),
          _itemList(image: "assets/image.jpg",title: "widget One",price: "\$339.1"),
          _itemList(image: "assets/image.jpg",title: "widget One",price: "\$339.1"),
          _itemList(image: "assets/image.jpg",title: "widget One",price: "\$339.1")


        ],
      ),
    );
  }

  Widget _itemList({image, title ,price}) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         Row(
           children: [
             Container(
               height: 70,
               width: 70,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40),
                   image: DecorationImage(
                       image: AssetImage(image), fit: BoxFit.cover)),
             ),
             SizedBox(
               width: 20,
             ),
             Text(title)
           ],
         ),
          Text(price)
        ],
      ),
    );
  }
  }


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
            height: 250,
              child: MainVisual()
          )
        ],
      ),
    );
  }
}

class CardItem {
  final String img;
  final String title;

  const CardItem({
    required this.img,
    required this.title,
  });
}

class MainVisual extends StatefulWidget {
  const MainVisual({Key? key}) : super(key: key);

  @override
  State<MainVisual> createState() => _MainVisualState();
}

class _MainVisualState extends State<MainVisual> {

  List<CardItem> items = [
    CardItem(
        img: 'images/hand.png',
        title: 'Hand Drawing Art'
    ),
    CardItem(
        img: 'images/glass.png',
        title: '3D Glass Art Work'
    ),
    CardItem(
        img: 'images/life.png',
        title: 'About Life Cycle'
    ),
    CardItem(
        img: 'images/print.png',
        title: 'Artist Document Work'
    ),
  ];




  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) => visual(items[index]),
    );
  }










  Widget visual({required CardItem item,}) => Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.lightGreenAccent
    ),
    child: Column(
      children: [
        Image.asset(item.img),
        Text(item.title)
      ],
    ),
  );
}

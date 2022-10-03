import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// StatelessWidget phi trangj thái không cập nhật sau khi hiển thị được
class thangCanh extends StatefulWidget {
  thangCanh({super.key});

  @override
  State<thangCanh> createState() => _thangCanhState();
}

class _thangCanhState extends State<thangCanh> {
  List<String> list = [
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg'
  ];
  bool showGrid = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          buildTitle(context),
          SizedBox(
            height: 20,
          ),
          buildWelcome(context),
          SizedBox(
            height: 20,
          ),
          buildSearch(context),
          SizedBox(
            height: 20,
          ),
          buildSavePlace(context),
          SizedBox(
            height: 20,
          ),
          // buildGrid(context)
          showGrid ? buildGrid(context) : buildList(context)
        ]),
      ),
    )));
  }

  buildTitle(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        IconButton(
            onPressed: () {},icon: Icon(Icons.extension))
      ],
    );
  }

  buildWelcome(BuildContext context) {
    return const Text.rich(TextSpan(
        text: "Welcome",
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        children: [
          TextSpan(
            text: "charlie",
            style: TextStyle(fontWeight: FontWeight.normal),
          )
        ]));
  }

  buildSearch(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          prefixIcon: Icon(Icons.search),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
  }

  buildSavePlace(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Save Places",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        Row(
          children: [
            IconButton(
                onPressed: () {
                  // cập nhật lại trạng thái
                  setState(() {
                    showGrid = true;
                  });
                },
                icon: Icon(
                  Icons.grid_3x3,
                  size: 30,
                )),
            IconButton(
                onPressed: () {
                  // cập nhật lại trạng thái
                  setState(() {
                    showGrid = false;
                  });
                },
                icon: Icon(
                  Icons.list,
                  size: 30,
                ))
          ],
        )
      ],
    );
  }

  buildGrid(BuildContext context) {
    return Expanded(
        child: GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      children: [
        ...list.map((e) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(e), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20)),
          );
        }).toList()
      ],
    )); // chiếm hết không gian còn lại của màn hình
  }

  buildList(BuildContext context) {
    return Expanded(
        child: ListView(
      scrollDirection: Axis.vertical,
      children: [
        ...list.map((e) {
          return Container(
            height: 200,
            margin: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage(e), fit: BoxFit.cover)),
          );
        })
      ],
    ));
  }
}

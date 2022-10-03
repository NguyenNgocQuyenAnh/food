import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class camp extends StatelessWidget {
  camp({super.key});
  List<String> list = [
    'assets/images/1.png',
    'assets/images/2.jpg',
    'assets/images/3.jpg',
    'assets/images/4.jpg',
    'assets/images/5.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(
      //   title: Text("Complicated image slider demo"),
      //   leading: Icon(Icons.arrow_back_ios),
      //  ),
      body:SafeArea(
        child: buildColumnSlider(context)
      ),
    );
  }

  Container buildColumnSlider(BuildContext context) {
    return Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
              children: [
                ...list.map((e) {
                  return Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(e),
                    fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular((30))
                    ) ,
                  );
                })
              ],
          ),
        ),
      );
  }

  Container buildRowSlider(BuildContext context) {

    return Container(
        height: 200,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...list.map((e) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 300,
                  width: MediaQuery.of(context).size.width, // lay kick thuoc cua man hinh
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(e),
                    fit: BoxFit.cover)
                    
                  ),
                );
              })
            ],
          ),
        ),
      );
  }
}

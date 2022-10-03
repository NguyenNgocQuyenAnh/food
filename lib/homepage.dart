import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});
 final String src ="https://images.unsplash.com/photo-1662401174604-4f5994714259?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text("Hello"),
    // );
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello app"),
      ),
      body:SingleChildScrollView(
        child: Center(
          child: Column(children: [
            Text(
              "welcome to my class",
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue
              ),
              ),
            Text("mobile programing group 2"),
            Image.network(src),
            Image.asset("assets/images/beheo.jpg"),
          ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
             print("xin chao");
      },
      child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Icon(Icons.home)
        ),
    );
  }
}
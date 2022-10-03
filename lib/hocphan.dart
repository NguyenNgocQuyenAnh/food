import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class hocPhanPage extends StatelessWidget {
  hocPhanPage({super.key});
  List<String> hocphan = [
    
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Column(
              children: [
                ...hocphan.map((e) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(e), fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular((30))),
                  );
                }),
            //    
              ],
            )
          ]),
        ),
      ),
    );
  }
}

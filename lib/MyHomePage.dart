import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutteraudio/AppColors.dart' as AppColors;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SafeArea(
          child: Scaffold(
        body: Column(children: [
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ImageIcon(AssetImage("img/menu.png"), size: 24),
                Row(children: [
                  const Icon(Icons.search),
                  SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.notifications),
                ]),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text("Popular Books", style: TextStyle(fontSize: 30)),
              )
            ],
          ),
          Container(
            height: 180,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 180,
                      child: PageView.builder(
                          controller: PageController(viewportFraction: 1),
                          itemCount: 5,
                          itemBuilder: (_, i) {
                            return Container(
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage("img/img_14.jpg"),
                                      fit: BoxFit.cover)),
                            );
                          }),
                    ))
              ],
            ),
          ),
        ]),
      )),
    );
  }
}

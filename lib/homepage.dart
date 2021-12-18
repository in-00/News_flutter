import 'package:flutter_blurhash/flutter_blurhash.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("News"),
        centerTitle: true,
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: Container(
          // padding: EdgeInsets.all(12.0),

          child: GridView.builder(
        itemCount: 16,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
            child: InkWell(
              onTap: () {},
              child: Stack(
                children: [
                  BlurHash(
                    hash: "L5H2EC=PM+yV0g-mq.wG9c010J}I",
                  ),
                  Center(
                      child: Text(
                    "Query",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )),
                ],
              ),
            ),
          );
        },
      )),
    );
  }
}

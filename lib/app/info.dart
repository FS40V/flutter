import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Info extends StatelessWidget {
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [Color(0xffFCE8E3), Color(0xffFDF7F5)],
              begin: Alignment.topCenter,
            ))),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/overlay.png'), fit: BoxFit.fill),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/overlay.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text('Cassian',
                  style: TextStyle(fontSize: 20, color: Color(0xFFFF9881))),
            ),
            Text('Photographer'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text('  California, United States'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('27'),
                      Text('shots'),
                    ],
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('100'),
                      Text('following'),
                    ],
                  ),
                ),
                Text(
                  '|',
                  style: TextStyle(fontSize: 30),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Text('2.2m'),
                      Text('followers'),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xffFFBE99),
                      Color(0xffFF9A82),
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  )),
              child: Text('Follow'),
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              constraints: BoxConstraints.tightForFinite(width: 200),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                    width: 100,
                    child: Icon(Icons.grid_on, color: Color(0xffFF9A82))),
                SizedBox(width: 100, child: Icon(Icons.view_day_outlined))
              ]),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    )),
                child: Column(
                  children: [
                    Icon(
                      Icons.remove,
                      size: 25,
                    ),
                    Text('Photos'),
                    Expanded(
                      child: ListView(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        children: List.generate(
                          7,
                          (index) => Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Image.asset("assets/a.png"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}

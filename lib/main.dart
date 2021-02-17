import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<Color> colors = [
    Colors.blue,
    Colors.green,
    Colors.black,
    Colors.pink,
    Colors.purple,
    Colors.red,
  ];
  List<String> nama = [
    'erik',
    'refan',
    'raden',
    'boces',
    'rafli',
    'kemal',
    'boa',
  ];
  List<String> nama1 = [
    'erik',
    'refan',
    'raden',
    'boces',
    'rafli',
    'boa',
    'asep',
    'asep seblak',
    'ewok',
    'fatur',
    'rama',
    'bangau',
  ];
  List<Color> warna = [
    Colors.purple,
    Colors.red,
    Colors.black,
    Colors.red,
    Colors.blueAccent,
    Colors.yellow,
    Colors.pink,
    Colors.blue,
    Colors.grey,
    Colors.red,
    Colors.lime,
    Colors.brown,
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(5),
                            width: 150,
                            height: 80,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Padding(padding: const EdgeInsets.all(10)),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(5),
                            width: 150,
                            height: 80,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Padding(padding: const EdgeInsets.all(100)),
                  Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: colors.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(5),
                            width: 70,
                            height: 80,
                            color: colors[index],
                            child: Center(
                              child: Text(nama[index]),
                            ),
                          );
                        }),
                  ),
                  Container(
                    height: 80,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: warna.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: new EdgeInsets.all(5),
                            width: 70,
                            height: 80,
                            color: warna[index],
                            child: Center(
                              child: Text(nama1[index]),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

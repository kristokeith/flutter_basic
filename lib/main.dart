import 'package:flutter/material.dart';
import 'package:flutter_basic/dynamic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          backgroundColor: Colors.red,
        ),
        body: Column(
          children: [
            Container(
              child: Row(
                children: [
                  const SizedBox(width: 40),
                  TextButton(
                    onPressed: () {},
                    child: const Text("BERITA TERBARU",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  const SizedBox(width: 10),
                  TextButton(
                    onPressed: () {},
                    child: const Text("PERTANDINGAN HARI INI",
                        style: TextStyle(fontSize: 16, color: Colors.black)),
                  ),
                  const SizedBox(width: 10),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  width: 500,
                  height: 275,
                  color: Colors.red,
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(16),
                ),
                Center(
                  child: Container(
                    width: 420,
                    height: 270,
                    color: Colors.white,
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Image.network(
                          'https://nun.sindonews.net/dyn/620/content/2020/02/12/11/1524916/lima-pesepak-bola-yang-terkenal-dermawan-iYy-thumb.jpg',
                          fit: BoxFit.cover,
                        ),
                        const Text(
                          'Lima Pesepak Bola yang Terkenal Dermawan',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            //Container for listview
            Container(
              height: 440,
              child: Expanded(
                //Listview
                child: ListView(
                  children: views.map((views) {
                    return Stack(
                      children: [
                        //White Container
                        Container(
                          color: Colors.white,
                          height: 150,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        //Red container
                        Container(
                          color: Colors.red,
                          height: 148,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 110,
                                width: 150,
                                //Image
                                child: Image.network(
                                  views.image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                height: 110,
                                width: 100,
                                child: Center(
                                  //Name
                                  child: Text(
                                    views.description,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

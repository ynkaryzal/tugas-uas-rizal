import 'package:flutter/material.dart';
import 'package:flutter_application_1/lingkaran.dart';
import 'package:flutter_application_1/persegi.dart';
import 'package:flutter_application_1/profildev.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text("MENGHITUNG",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12), fontSize: 25)),
            Text("PERSEGI DAN LINGKARAN",
                style: TextStyle(
                    color: Color.fromARGB(255, 12, 12, 12), fontSize: 25)),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Persegi()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 0, 0),
                      minimumSize:
                          Size(300, 120) // put the width and height you want
                      ),
                  child: Column(
                    children: [
                      Text("HITUNG",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("LUAS PERSEGI",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("(Pilih Untuk Mulai Menghitung Luas Peersegi)",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Lingkaran()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 0, 0),
                      minimumSize:
                          Size(300, 120) // put the width and height you want
                      ),
                  child: Column(
                    children: [
                      Text("HITUNG",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("LUAS LINGARAN",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("(Pilih Untuk Mulai Menghitung Luas Lingkaran)",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Profildev()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 0, 0, 0),
                      minimumSize:
                          Size(300, 120) // put the width and height you want
                      ),
                  child: Column(
                    children: [
                      Text("PROFIL",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("DEVELOPER",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                      Text("(Pilih Untuk Melihat Profil Developer)",
                          style: TextStyle(color: Colors.white, fontSize: 10))
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

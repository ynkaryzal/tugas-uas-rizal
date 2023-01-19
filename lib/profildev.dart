import 'package:flutter/material.dart';

class Profildev extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          backgroundColor: Color.fromARGB(255, 0, 0, 0),
        ),
        body: Center(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(50),
                      child: Center(
                        child: Column(
                          children: [
                            SizedBox(
                              height: 100,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Nama Developer : Fahrizal Syaifi", style: TextStyle(fontSize: 20),),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("NPM : 19710004", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Kelas : SiNonregBjm", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Kontak : 0511 436500", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                child: Text("Alamat : Jalan Pangeran Samudera No.42, Kertak Baru Ilir, Banjarmasin Tengah, Kertak Baru Ilir, Banjarmasin Tengah, Kota Banjarmasin, Kalimantan Selatan 70231, Indonesia", style: TextStyle(fontSize: 20)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

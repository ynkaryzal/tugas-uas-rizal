import 'package:flutter/material.dart';

class Lingkaran extends StatefulWidget {
  const Lingkaran({super.key});

  @override
  State<Lingkaran> createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  double? result=0;
  
  add(){
    setState((){
      const phi = 3.14;
      int num2 = int.parse(controller2.text);
      result = phi * num2 * num2;
 
      
    });
  }
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
              SizedBox(height: 100,),
              Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "Masukkan Panjang",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Jari-Jari Lingkaran",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Jari-jari lingkaran',
                  ),
                ),
              ),
              Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(color: Color.fromARGB(255, 0, 0, 0), borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    add();
                    // controller1.clear();
                    // controller2.clear();
                  },
                  
                  child: Text(
                    'HITUNG',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  "$result",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            ],
          ),
        ));
  }
}
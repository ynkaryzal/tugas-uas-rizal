import 'package:flutter/material.dart';

class Persegi extends StatefulWidget {
  const Persegi({super.key});

  @override
  State<Persegi> createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int? result = 0, num1 = 0, num2 = 0;
  add() {
    setState(() {
      num1 = int.parse(controller1.text);
      num2 = int.parse(controller2.text);
      result = num1! * num2!;
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
              SizedBox(
                height: 100,
              ),
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
                        "dan Lebar Persegi",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: controller1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Panjang Persegi',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: controller2,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Lebar Persegi',
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20.0),
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(10)),
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
                margin: const EdgeInsets.all(10.0),
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "$result",
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

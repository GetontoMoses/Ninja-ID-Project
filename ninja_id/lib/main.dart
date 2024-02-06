import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Ninja(),
  ));
}

class Ninja extends StatefulWidget {
  const Ninja({super.key});

  @override
  State<Ninja> createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int ninjalevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text(
          "Ninja ID Card",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {setState(() {
          ninjalevel += 1;
        });},
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/Minions.jpg"),
                radius: 50.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey[800],
            ),
            const Text(
              "NAME",
              style: TextStyle(
                  color: Colors.grey, fontSize: 20.0, letterSpacing: 2.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Getonto",
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "CURRENT NINJA LEVEL",
              style: TextStyle(
                  color: Colors.grey, fontSize: 20.0, letterSpacing: 2.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              '$ninjalevel',
              style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2.0,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
            Row(children: [
              const Icon(Icons.mail, color: Colors.grey),
              const SizedBox(width: 10.0),
              Text("example@gmail.com",
                  style: TextStyle(color: Colors.grey[400], fontSize: 20.0))
            ]),
          ],
        ),
      ),
    );
  }
}

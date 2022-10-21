import 'package:flutter/material.dart';
import 'package:practice/combine.dart';

void main() => runApp(const Pentafi1());

class Pentafi1 extends StatelessWidget {
  const Pentafi1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "3 square",
        home: Scaffold(
            body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //first square container
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0X5A5A5A5a),
                ),
                const SizedBox(
                  width: 50,
                ),

                //second square container
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0XFF5A5A5a),
                ),
                const SizedBox(
                  width: 50,
                ),

                //third square container
                Container(
                  height: 90,
                  width: 90,
                  color: const Color(0X5A5A5A5a),
                ),
              ]),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    elevation: 5.0,
                    minWidth: 100,
                    height: 60,
                    color: Colors.blueAccent,
                    child: const Text('Back',
                        style: TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: MaterialButton(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    elevation: 5.0,
                    minWidth: 100,
                    height: 60,
                    color: Colors.blueAccent,
                    child: const Text('Next',
                        style: TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Pentafi3()));
                    },
                  ),
                ),
              ])
            ])));
  }
}

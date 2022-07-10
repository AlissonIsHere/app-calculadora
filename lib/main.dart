import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      darkTheme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomeDaCalculadora(title: 'Calculadora'),
    );
  }
}

class HomeDaCalculadora extends StatefulWidget {
  const HomeDaCalculadora({Key? key, required String title}) : super(key: key);

  @override
  State<HomeDaCalculadora> createState() => _HomeDaCalculadoraState();
}

class _HomeDaCalculadoraState extends State<HomeDaCalculadora> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          title: const Text('Calculadora'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            tela(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 30,
                ),
                buildElevatedButton('7'),
                buildElevatedButton('8'),
                buildElevatedButton('9'),
                buildElevatedButton('/'),
                Container(
                  width: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 30,
                ),
                buildElevatedButton('4'),
                buildElevatedButton('5'),
                buildElevatedButton('6'),
                buildElevatedButton('*'),
                Container(
                  width: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 30,
                ),
                buildElevatedButton('1'),
                buildElevatedButton('2'),
                buildElevatedButton('3'),
                buildElevatedButton('-'),
                Container(
                  width: 30,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 30,
                ),
                buildElevatedButton('C'),
                buildElevatedButton('0'),
                buildElevatedButton('='),
                buildElevatedButton('+'),
                Container(
                  width: 30,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
              Container(
                height: 200,
              ),
            ]),
          ],
        ));
  }
}

Widget buildElevatedButton(String texto) {
  return ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.all(30))),
    child: Text(
      texto,
      style: const TextStyle(
        fontSize: 25,
      ),
    ),
  );
}

Widget tela() {
  return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.green),
          padding: MaterialStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7),
              side: BorderSide(width: 2)))),
      child: const Text(
        '55+26',
        textAlign: TextAlign.right,
        style: TextStyle(fontSize: 40),
      ));
}

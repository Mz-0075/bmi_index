import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

final weightValue = TextEditingController();
final heightValue = TextEditingController();

const space = SizedBox(
  height: 10,
);

class _MyAppState extends State<MyApp> {
  double? value1;
  void sum() {
    // print(weightValue.text);
    // print(heightValue.text);
    double doubleHeightValue = double.parse(heightValue.text);
    double doubleWeightValue = double.parse(weightValue.text);
    double heightSquare = (doubleHeightValue * doubleHeightValue);
    double value = (doubleWeightValue / heightSquare);
    debugPrint(value.toString());
    setState(() {
      value1 = value;
    });
  }

  // ignore: unused_field
//  static String sum2=sum();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(hintText: "weight"),
                style: const TextStyle(color: Colors.red),
                keyboardType: TextInputType.number,
                controller: weightValue,
              ),
              space,
              TextFormField(
                decoration: const InputDecoration(hintText: "height"),
                style: const TextStyle(color: Colors.red),
                keyboardType: TextInputType.number,
                controller: heightValue,
              ),
              space,
              ElevatedButton(
                onPressed: sum,
                child: const Text("Calculate"),
              ),
              space,
              Text("$value1"),
            ],
          ),
        ),
      ),
    );
  }
}

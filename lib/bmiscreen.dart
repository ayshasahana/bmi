import 'package:flutter/material.dart';

class bmiCalculator extends StatefulWidget {
  const bmiCalculator({super.key});

  @override
  State<bmiCalculator> createState() => _bmiCalculatorState();
}

class _bmiCalculatorState extends State<bmiCalculator> {
  final TextEditingController _height = TextEditingController();
  final TextEditingController _weight = TextEditingController();
  double result = 0.0;
  void bmiCalculator() {
    double Height = double.parse(_height.text) / 100;
    double Weight = double.parse(_weight.text);
    print(Height);
    double Heightsquare = Height * Height;
    result = Weight / Heightsquare;
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: Text("BMI CALCULATOR"), backgroundColor: Colors.pink),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 300,
            child: TextField(
              style: TextStyle(color:Colors.pink),

              controller: _height,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.trending_up,color: Colors.pink),
                hintText: 'height in cm',
              ),
            ),
          ),
          Container(
            height: 80,
            width: 300,
            child: TextField(
              style: TextStyle(color:Colors.pink),
              controller: _weight,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.menu,color: Colors.pink),
                hintText: 'weight in kg',
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {

                  bmiCalculator();
                });
              },
              style: ElevatedButton.styleFrom(primary: Colors.pinkAccent),
              child: Text('Calculator')),
          Text(result.toStringAsFixed(2)),
        ],
      )),
    );
  }
}

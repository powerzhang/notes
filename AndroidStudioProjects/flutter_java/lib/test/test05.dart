import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: DemoApp()));

class DemoApp extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(body: Center(child:CustomButton("haha")));
}
class CustomButton extends StatelessWidget {
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(label),
    );
  }
}

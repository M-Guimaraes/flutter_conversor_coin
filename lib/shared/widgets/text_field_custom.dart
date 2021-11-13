import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String labelText;
  final String prefix;
  final TextEditingController controller;
  final Function function;

  const TextFieldCustom(
      {Key? key,
      required this.labelText,
      required this.prefix,
      required this.controller,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(color: Colors.amber),
        prefix: Text(
          prefix,
          style: const TextStyle(fontSize: 20.0),
        ),
      ),
      style: const TextStyle(color: Colors.amber, fontSize: 20.0),
      controller: controller,
      onChanged: (value) {
        // print(value);
        function(value);
      },
    );
  }
}

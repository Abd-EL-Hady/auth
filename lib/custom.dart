import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class custom extends StatelessWidget {
  const custom({super.key, this.icon, this.R, this.icon1});
  final IconData? icon;
  final double? R;
  final IconData? icon1;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        prefixIcon: Icon(icon),
        suffixIcon: Icon(icon1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(R!),
        ),
      ),
    );
  }
}

class Buttoms extends StatelessWidget {
  const Buttoms({
    super.key,
    required this.text,
    required this.R,
    this.function,
  });
  final String text;
  final double R;
  final Function()? function;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(R))),
      onPressed: () {
        function;
      },
      child: Text(text),
    );
  }
}

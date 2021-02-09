import 'package:flutter/material.dart';

class Symbol extends StatelessWidget {
  final colorbg;
  final String url;

  Symbol({this.url, this.colorbg});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: colorbg,
          child: Center(child: Image.asset(url)),
        ),
      ),
    );
  }
}

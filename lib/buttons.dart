import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CalButtons extends StatelessWidget {
  final color;
  final textColor;
  final double size;
  final String buttonText;
  final show;
  final clear;

  CalButtons(
      {this.color,
      this.textColor,
      this.size,
      this.buttonText,
      this.show,
      this.clear});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: show,
      onLongPress: clear,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: color,
            child: Center(
              child: Text(buttonText,
                  style: GoogleFonts.poppins(
                    color: textColor,
                    fontSize: size,
                    fontWeight: FontWeight.w600,
                  )),
            ),
          ),
        ),
      ),
    );
  }
}

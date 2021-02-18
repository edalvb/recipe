import 'package:flutter/material.dart';

class ToastExamples extends StatelessWidget {
  final VoidCallback onTap;
  final String imagePath;

  ToastExamples(this.imagePath, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: SizedBox(
        height: 49,
        width: 61,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(7),
          child: AspectRatio(
            aspectRatio: 4 / 3,
            child: Image.asset(
              this.imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
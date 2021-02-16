import 'package:flutter/material.dart';

class BorderButton extends StatelessWidget {
  String text;
  VoidCallback onTap;

  BorderButton({this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 15,
        bottom: 15,
        right: 10,
      ),
      child: OutlineButton(
        onPressed: onTap,
        textColor: Colors.white,
        borderSide: BorderSide(color: Colors.white, width: 1),
        highlightedBorderColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        child: Text(
          this.text.toUpperCase(),
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5),
        ),
      ),
    );
  }
}
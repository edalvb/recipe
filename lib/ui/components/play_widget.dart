import 'package:flutter/material.dart';

class PlayWidget extends StatelessWidget {
  final VoidCallback onTap;
  PlayWidget(this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/listen2.png",
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Watch Recipe",
              style: TextStyle(
                color: Color(0xFF77797C),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
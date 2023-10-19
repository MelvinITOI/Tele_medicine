import 'package:flutter/material.dart';

class MainImageWidget extends StatelessWidget {
  const MainImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(alignment: Alignment.bottomRight, children: [
          Image.asset(
            'assets/images/corona.png',
            filterQuality: FilterQuality.none,
          ),
          // The viewer Count
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(right: 16, bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  '127 views',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.remove_red_eye, color: Colors.white),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

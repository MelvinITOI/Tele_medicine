// ignore: camel_case_types
import 'package:flutter/Material.dart';

// ignore: camel_case_types
class myVerticalDivider extends StatelessWidget {
  const myVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      child: VerticalDivider(
        indent: 16,
        endIndent: 16,
        thickness: 3,
        color: Color(0xffe6e7fd),
      ),
    );
  }
}

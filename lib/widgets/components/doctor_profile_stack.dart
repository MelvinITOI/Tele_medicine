import 'package:flutter/Material.dart';

import '../doctor_details_widgets.dart';

class DoctorProfileStack extends StatelessWidget {
  const DoctorProfileStack({
    super.key,
    required this.doctorImage,
    required this.doctorName,
    required this.doctorField,
    required this.mediaQuery,
  });

  final String doctorImage;
  final String doctorName;
  final String doctorField;
  final Size mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: DoctorDetailsWidget(
            doctorImage: doctorImage,
            doctorName: doctorName,
            doctorField: doctorField,
            height: 90,
            width: 80,
          ),
        ),
        // Rating and Review Count
        Positioned.fill(
          bottom: 8,
          right: mediaQuery.width * .02,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  '127 Reviews',
                  style: TextStyle(
                    color: Color(0xff848484),
                  ),
                ),
                SizedBox(width: 8),
                Icon(
                  Icons.copyright,
                  color: Color.fromARGB(255, 80, 80, 80),
                  size: 8,
                ),
                SizedBox(width: 8),
                Text(
                  '4.8',
                ),
                Icon(
                  Icons.star,
                  color: Color(0xFFFBC02D),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

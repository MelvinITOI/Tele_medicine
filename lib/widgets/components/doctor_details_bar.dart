import 'package:flutter/Material.dart';

import '../my_vertical_divider.dart';
import 'doctor_profile_details.dart';

class DoctorDetailsBar extends StatelessWidget {
  const DoctorDetailsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: const Color(0xfffaf9ff),
      ),
      //Experience and profile Views
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          DoctorProfileDetails(
            number: '127',
            text: 'Reviews',
          ),
          myVerticalDivider(),
          DoctorProfileDetails(
            number: '709',
            text: 'Patients',
          ),
          myVerticalDivider(),
          DoctorProfileDetails(
            number: '11',
            text: 'Years exp.',
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tele_medicine/screens/doctor_details.dart';
import 'package:flutter_tele_medicine/widgets/doctor_details_widgets.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String doctorField;

  const DoctorCard({
    required this.doctorImage,
    super.key,
    required this.doctorName,
    required this.doctorField,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => DoctorDetails(
                      doctorImage: doctorImage,
                      doctorName: doctorName,
                      doctorField: doctorField,
                    )),
              ));
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Container(
            margin: const EdgeInsets.all(16),
            width: double.infinity,
            child: DoctorDetailsWidget(
              doctorImage: doctorImage,
              doctorName: doctorName,
              doctorField: doctorField,
              height: 55,
              width: 60,
            ),
          ),
        ),
      ),
    );
  }
}

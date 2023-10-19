import 'package:flutter/Material.dart';

class DoctorDetailsWidget extends StatelessWidget {
  const DoctorDetailsWidget({
    super.key,
    required this.doctorImage,
    required this.doctorName,
    required this.doctorField,
    required this.height,
    required this.width,
  });

  final String doctorImage;
  final String doctorName;
  final String doctorField;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Doctor Profile Image
        SizedBox(
          width: width,
          height: height,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                doctorImage,
                fit: BoxFit.cover,
              )),
        ),
        const SizedBox(width: 16),
        //fail safe for doctor name incase it got Too Long
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Doctor Name
              Text(
                doctorName,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: height == 90 ? 24 : 18,
                ),
              ),
              const SizedBox(height: 8),
              //Doctor Field
              Text(
                doctorField,
                style: TextStyle(
                  fontSize: height == 90 ? 20 : 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        // the Rating
        // if height 90 means it's doctor Details Screen
        height == 90
            ? const SizedBox(
                width: 0,
                height: 0,
              )
            : Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  ),
                  const Text(
                    '4.8',
                  ),
                ],
              ),
      ],
    );
  }
}

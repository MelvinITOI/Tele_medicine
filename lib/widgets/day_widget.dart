import 'package:flutter/Material.dart';

class DoctorDayWidget extends StatelessWidget {
  const DoctorDayWidget({
    Key? key,
    this.day,
    required this.dayNum,
  }) : super(key: key);
  final String? day;
  final String dayNum;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Colors.grey)),
      child: Container(
        margin: EdgeInsets.symmetric(
            horizontal: 16, vertical: day == null ? 0 : 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            day == null
                ? const SizedBox(height: 0, width: 0)
                : Text(
                    day!,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
            Text(
              dayNum,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

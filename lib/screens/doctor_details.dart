import 'package:flutter/Material.dart';
import 'package:flutter_tele_medicine/widgets/components/doctor_details_bar.dart';
import 'package:flutter_tele_medicine/widgets/components/doctor_profile_stack.dart';
import 'package:flutter_tele_medicine/widgets/components/paragraph_title_text.dart';
import 'package:flutter_tele_medicine/widgets/day_widget.dart';
import 'package:flutter_tele_medicine/widgets/description_text_widget.dart';

class DoctorDetails extends StatelessWidget {
  DoctorDetails(
      {super.key,
      required this.doctorImage,
      required this.doctorName,
      required this.doctorField});

  final String doctorName;
  final String doctorImage;
  final String doctorField;
  final List<Map<String, String>> days = [
    {
      'num': '1',
      'day': 'Sat',
      'time': '9:00 am',
    },
    {
      'num': '2',
      'day': 'Sun',
      'time': '10:00 am',
    },
    {
      'num': '3',
      'day': 'Mon',
      'time': '11:00 am',
    },
    {
      'num': '4',
      'day': 'Tue',
      'time': '12:00 pm',
    },
    {
      'num': '5',
      'day': 'Wed',
      'time': '5:00 pm',
    },
    {
      'num': '6',
      'day': 'Thu',
      'time': '6:00 pm',
    },
    {
      'num': '7',
      'day': 'Fri',
      'time': '7:00 pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      //Back Button and Appointment Text
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const Padding(
          padding: EdgeInsets.only(left: 16, top: 18),
          child: Text(
            'Back',
            style: TextStyle(
                fontSize: 18, color: Color.fromARGB(255, 233, 228, 228)),
          ),
        ),
        title: const Text(
          'Appointment',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff2c41ff),
      body: SingleChildScrollView(
        child: Container(
          height: mediaQuery.height,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32),
              topLeft: Radius.circular(32),
            ),
          ),
          margin: const EdgeInsets.only(top: 32),
          child: Column(
            children: [
              // Profile Details
              DoctorProfileStack(
                doctorImage: doctorImage,
                doctorName: doctorName,
                doctorField: doctorField,
                mediaQuery: mediaQuery,
              ),
              const DoctorDetailsBar(),
              //Demography Word
              const ParagraphTitleText(title: 'Demography'),
              //Lorem and Show more.
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: DescriptionTextWidget(
                    text:
                        'Lorem ipsum dolor sit amet, consec tetur adipis cing elit, sed do eiusmod tempor incid idunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
              ),
              const ParagraphTitleText(title: 'Schedules'),
              const SizedBox(height: 8),
              //Book a visit day
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  itemBuilder: (ctx, index) {
                    return DoctorDayWidget(
                      day: days[index]['day']!,
                      dayNum: days[index]['num']!,
                    );
                  },
                ),
              ),
              const SizedBox(height: 8),
              const ParagraphTitleText(title: 'Choose time'),
              const SizedBox(height: 8),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: days.length,
                  itemBuilder: (ctx, index) {
                    return DoctorDayWidget(
                      dayNum: days[index]['time']!,
                    );
                  },
                ),
              ),
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff2c41ff),
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      'Book Now!',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

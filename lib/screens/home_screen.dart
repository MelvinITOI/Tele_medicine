import 'package:flutter/Material.dart';
import 'package:flutter_tele_medicine/screens/setting_screen.dart';
import 'package:flutter_tele_medicine/widgets/components/appbar.dart';
import 'package:flutter_tele_medicine/widgets/components/bottom_nav_bar_item.dart';
import 'package:flutter_tele_medicine/widgets/category_card.dart';
import 'package:flutter_tele_medicine/widgets/components/doctor_card.dart';
import 'package:flutter_tele_medicine/widgets/main_image_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /* list with doctors info
    doctor images are from unsplash
    i left the images name with their original owners
    i made up their own field
  */

  final List<Map<String, String>> doctors = [
    {
      'name': 'dr. Bruno Rodrigues',
      'field': 'Neurologists',
      'image': 'assets/images/doctors/bruno-rodrigues.jpg'
    },
    {
      'name': 'dr. Austin Distel',
      'field': 'Endocrinologists',
      'image': 'assets/images/doctors/austin-distel.jpg'
    },
    {
      'name': 'dr. Usman Yousaf',
      'field': 'Psycologists',
      'image': 'assets/images/doctors/usman-yousaf.jpg'
    },
    {
      'name': 'dr. Bruno Rodrigues',
      'field': 'Neurologists',
      'image': 'assets/images/doctors/bruno-rodrigues.jpg'
    },
    {
      'name': 'dr. Austin Distel',
      'field': 'Endocrinologists',
      'image': 'assets/images/doctors/austin-distel.jpg'
    },
    {
      'name': 'dr. Usman Yousaf',
      'field': 'Psycologists',
      'image': 'assets/images/doctors/usman-yousaf.jpg'
    },
  ];

  final List<IconData> bottomNavIcons = [
    Icons.home,
    Icons.view_list_outlined,
    Icons.message_outlined,
    Icons.settings,
  ];
  final List<Map<String, dynamic>> categoriesData = [
    {
      'name': 'Doctor',
      'icon': Icons.person,
    },
    {
      'name': 'Hospital',
      'icon': Icons.apartment,
    },
    {
      'name': 'Consultant',
      'icon': Icons.monitor_heart,
    },
    {
      'name': 'Recipe',
      'icon': Icons.receipt,
    },
  ];

  int navBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar to show username and profileImage
      appBar: const AppBarWidget(appBarValue: 1),
      body: SingleChildScrollView(
        child: SizedBox(
          //take the available Height
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              //Search Field
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: const Icon(Icons.search_sharp),
                    prefixIconColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(16)),
                    contentPadding: const EdgeInsets.all(20),
                    hintText: 'Search doctor or anything',
                  ),
                ),
              ),
              //The Image
              const MainImageWidget(),
              //App Categories
              Row(
                children: categoriesData
                    .map((category) => CategoryCard(
                          categoryName: category['name'],
                          categoryIcon: category['icon'],
                        ))
                    .toList(),
              ),
              //The Text : [Top Doctors, See All]
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Top Doctors',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              //Doctors List
              Expanded(
                child: ListView.builder(
                  primary: false,
                  itemBuilder: ((context, index) => DoctorCard(
                        doctorImage: doctors[index]['image']!,
                        doctorName: doctors[index]['name']!,
                        doctorField: doctors[index]['field']!,
                      )),
                  itemCount: doctors.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

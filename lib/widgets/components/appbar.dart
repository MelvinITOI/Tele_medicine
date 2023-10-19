import 'package:flutter/Material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final int appBarValue;
  const AppBarWidget({Key? key, required this.appBarValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> titles = [];
    if (appBarValue == 1) {
      titles = ['Healthy'];
    } else if (appBarValue == 2) {
      titles = ['Settings'];
    }
    String selectedTitle = titles.isNotEmpty ? titles[0] : '';
    return AppBar(
      elevation: 0,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          //Welcome User
          // Text(
          //   'Morning, ElG0hary',
          //   style: TextStyle(
          //     fontSize: 18,
          //     color: Color(0xff878788),
          //   ),
          // ),
          SizedBox(height: 4),
          Text(
            selectedTitle,
            style: TextStyle(
              fontSize: 26,
              color: Colors.black,
            ),
          )
        ],
      ),
      // The Profile Image
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          // To scale the image Size
          child: Transform.scale(
            scale: 1.6,
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                child: Image.asset('assets/images/elg0hary.png'),
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

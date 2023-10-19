import 'package:flutter/material.dart';
import 'package:flutter_tele_medicine/main.dart';
import '../app_constant.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mediaSize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        color: myColor,
        // gradient: LinearGradient(begin: Alignment.topRight, colors: [
        //   Colors.green.shade400,
        //   Colors.green.shade600,
        //   Colors.green.shade800,
        //   Colors.green.shade900,
        // ]),
        image: DecorationImage(
          image: AssetImage("assets/main.jpg"),
          fit: BoxFit.cover,
          colorFilter:
              ColorFilter.mode(myColor.withOpacity(0.8), BlendMode.dstATop),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Positioned(top: 0, child: _buildTop()),
          Positioned(bottom: 0, child: _buildBottom()),
        ]),
      ),
    );
  }

  Widget _buildTop() {
    return SizedBox(
      width: mediaSize.width,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 100),
          Padding(
              padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget> [
                        Icon(
                          Icons.local_hospital, // Replace with the desired icon
                          size: 40, // Adjust the size as needed
                          color: Colors.blueGrey, // Adjust the color as needed
                        ),
                        Text(
                          "Tele Medicine ",
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'TiltNeon',
                            fontSize: 40,
                            letterSpacing: 2,
                          ),
                        ),
                      ],
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBottom() {
    return SizedBox(
      width: mediaSize.width,
      child: Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        )),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: _buildForm(),
        ),
      ),
    );
  }

  final _formKey = GlobalKey<FormState>();
  Widget _buildForm() {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Welcome",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.w500),
            ),
            const Text("Please login with your information"),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.blueGrey))),
              child: TextFormField(
                controller: emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Email is Required";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  hintText: "Enter your email",
                  // icon: Icon(Icons.mail),
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.blueGrey))),
              child: TextFormField(
                controller: passwordController,
                obscureText: obscureText,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Password is Required";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "Enter your passwords",
                  // icon: const Icon(Icons.lock),
                  border: InputBorder.none,
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        obscureText = !obscureText;
                      });
                    },
                    child: obscureText
                        ? const Icon(
                            Icons.visibility,
                            color: Colors.grey,
                          )
                        : const Icon(
                            Icons.visibility_off,
                            color: Colors.grey,
                          ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 70),
            // _buildRememberForgot(),
            const SizedBox(height: 0),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  debugPrint("Email : ${emailController.text}");
                  debugPrint("Password : ${passwordController.text}");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Main()),
                  );
                  Snackbar_Successfully(context);
                } else {
                  Snackbar_Error(context);
                }
              },
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                elevation: 20,
                shadowColor: myColor,
                backgroundColor: Colors.blueAccent.shade100,
                minimumSize: const Size.fromHeight(60),
              ),
              child: const Text("LOGIN"),
            ),
            const SizedBox(height: 20),
            // _buildOtherLogin(),
          ],
        ));
  }

  // Widget _buildRememberForgot() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: [
  //       Row(
  //         children: [
  //           Checkbox(
  //               value: rememberUser,
  //               onChanged: (value) {
  //                 setState(() {
  //                   rememberUser = value!;
  //                 });
  //               }),
  //           Text("Remember me"),
  //         ],
  //       ),
  //       TextButton(onPressed: () {}, child: Text("I forgot my password"))
  //     ],
  //   );
  // }

  // Widget _buildOtherLogin() {
  //   return Center(
  //     child: Column(
  //       children: [
  //         Text("Or Login with"),
  //         const SizedBox(height: 10),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Tab(icon: Image.asset("assets/images/facebook.png")),
  //             Tab(icon: Image.asset("assets/images/twitter.png")),
  //             Tab(icon: Image.asset("assets/images/github.png")),
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}

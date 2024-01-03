import 'package:flutter/material.dart';
import 'Screen/auth/Login_Screen.dart';
import "Screen/auth/Ragister_Screen.dart";
import 'Screen/auth/Verify_Screen.dart';

class Mainview extends StatefulWidget {
  const Mainview({super.key});

  @override
  State<Mainview> createState() => _MainviewState();
}

class _MainviewState extends State<Mainview> {
  PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 4,
        controller: controller,
        itemBuilder: (context,index){
          if (index == 0) {
            return LoginScreen(
              controller: controller,
            );
          }else if (index == 1) {
            return SingUpScreen(
              controller: controller,
            );
          }else{
            return VerifyScreen(
              controller:controller,
            );
          }
        }
        ),
    );
  }
}

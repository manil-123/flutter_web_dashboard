import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fsc_background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 100.h,
              width: MediaQuery.of(context).size.width * 0.23,
              child: Image.asset('assets/images/fsc_hero.png'),
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              'HERO FSC',
              style: TextStyle(
                fontSize: 22.sp,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Enter your details to login to your account:',
              style: TextStyle(
                fontSize: 14.sp,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextFormField(
                controller: _userNameController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  hintText: "Email",
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

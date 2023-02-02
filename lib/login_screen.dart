import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hero_dashboard_web/widgets/login_text_field.dart';
import 'package:hero_dashboard_web/widgets/on_hover_button.dart';
import 'package:hero_dashboard_web/widgets/on_hover_text.dart';

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
        child: Form(
          key: _formKey,
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
              OnHoverText(
                child: Text(
                  'HERO FSC',
                  style: TextStyle(
                    fontSize: 22.sp,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'Enter your details to login to your account:',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white.withOpacity(0.4),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: LoginTextFormField(
                  controller: _userNameController,
                  hint: "Email",
                ),
              ),
              SizedBox(
                height: 16,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.3,
                child: LoginTextFormField(
                  controller: _passwordController,
                  hint: "Password",
                  isPassword: true,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                child: OnHoverButton(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(16),
                    ),
                    onPressed: () {},
                    child: Text('Sign In'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

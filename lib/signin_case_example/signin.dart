import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_practice/signin_case_example/sign_widget.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final SignController controller = Get.put(SignController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: controller.emailController.value,
                keyboardType: TextInputType.emailAddress,
                obscureText: false,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(Icons.email_sharp),
                  filled: true,
                  // ignore: deprecated_member_use
                  fillColor: Colors.grey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: controller.passwordController.value,
                keyboardType: TextInputType.emailAddress,

                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  prefixIcon: Icon(Icons.password_outlined),
                  filled: true,
                  // ignore: deprecated_member_use
                  fillColor: Colors.grey.withOpacity(0.5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  controller.signinApi();
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

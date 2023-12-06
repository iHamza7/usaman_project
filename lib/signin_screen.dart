// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:usaman/custom_button.dart';
import 'package:usaman/custom_text_field.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Align(
                alignment: Alignment.center,
                child: Text(
                  'a.g.bell',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.teal,
                  ),
                ),
              ),
              SizedBox(
                height: 200,
                child: Image.asset('assets/Signin.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Sign In To Continue',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter Email',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CustomTextField(
                prefix: const Icon(Icons.mail),
                controller: emailController,
                hintText: 'enter email',
                suffix: const Icon(Icons.abc_sharp),
              ),
              const SizedBox(height: 30),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Enter Password',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CustomTextField(
                controller: passwordController,
                prefix: const Icon(Icons.lock),
                hintText: 'Enter your Password',
                suffix: const Icon(Icons.remove_red_eye),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: 'Sign In',
                color: Colors.white,
                press: () {},
              ),
              const SizedBox(height: 15),
              const Text(
                'Don\'t have an account?',
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  ' SignUp',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
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

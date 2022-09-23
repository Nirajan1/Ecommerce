import 'package:ecommerce/view/forget_password.dart';
import 'package:ecommerce/view/home.dart';
import 'package:ecommerce/view/registration.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showPassword = true;
  GlobalKey<FormState> key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Form(
                key: key,
                child: Column(
                  children: [
                    //page title
                    const Text(
                      "SIGN IN",
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                    //Image lottie animation
                    Lottie.asset(
                      'images/password.json',
                      width: Get.size.width * 0.50,
                      height: Get.size.height * 0.3,
                      frameRate: FrameRate(30.0),
                    ),
                    //user id
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: 'User name',
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      ),
                      validator: ((value) =>
                          value!.isEmpty ? 'Email id is required' : null),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    //password field
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Password*',
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: IconButton(
                          onPressed: () {
                            showPassword = !showPassword;
                            setState(() {});
                          },
                          icon: showPassword == true
                              ? const Icon(Icons.visibility_off_outlined)
                              : const Icon(Icons.visibility_outlined),
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                        ),
                      ),
                      obscureText: showPassword,
                      validator: ((value) =>
                          value!.isEmpty ? 'Password is required' : null),
                    ),

                    const SizedBox(
                      height: 10.0,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: MaterialButton(
                            color: Colors.blueAccent,
                            textColor: Colors.white,
                            onPressed: () {
                              if (key.currentState!.validate()) {
                                Get.off(() => const MyHomeView());
                              }
                            },
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(fontSize: 15.0),
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 10.0,
                    ),

                    InkWell(
                      onTap: () {
                        Get.to(() => const RegisterView());
                      },
                      child: const Text('Are you new? Register here'),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),

                    InkWell(
                      onTap: () {
                        Get.to(() => const ForgetPasswordView());
                      },
                      child: const Text('Forget Password?'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

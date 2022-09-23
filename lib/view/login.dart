import 'package:ecommerce/view/registration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: [
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
                    obscureText: true,
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
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          color: Colors.blueAccent,
                          onPressed: () {},
                          child: const Text(
                            'LOG IN',
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

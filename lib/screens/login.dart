import 'package:flutter/material.dart';
import 'package:ozostore/screens/dashboard.dart';
import 'package:ozostore/utils/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final number = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashScreenBg,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/Group.png",
                // height: ,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text("Log in or Sign up"),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 8),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color:
                                    const Color.fromARGB(101, 155, 152, 143)),
                          ),
                          child: Image.asset(
                            "assets/flag.png",
                            width: 40,
                          ),
                        ),
                        const SizedBox(width: 10),
                        SizedBox(
                          // height: 52,
                          width: 250,
                          child: Form(
                            key: _formKey,
                            child: TextFormField(
                              keyboardType: TextInputType.phone,
                              controller: number,
                              validator: (value) {
                                if (value != null) {
                                  if (value.length == 2) {
                                    return null;
                                  } else {
                                    return "Invalid Phone";
                                  }
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                hintText: "+ 91",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              // controller: _phone,
                              // cursorHeight: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        height: 48,
                        width: 320,
                        decoration: BoxDecoration(
                            color: splashScreenBg,
                            borderRadius: BorderRadius.circular(6)),
                        child: GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const DashBoard()));
                            }
                          },
                          child: const Center(
                            child: Text(
                              "Sign Up",
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )),
                    const SizedBox(
                      height: 32,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

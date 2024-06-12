import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late String _name;
  late String _email;
  late String _password;
  late String _confirmPassword;

  Widget _buildNameField() {
    return TextFormField(
      validator: (text) {
        return HelperValidator.nameValidate(text!);
      },
      maxLines: 1,
      decoration: const InputDecoration(
          labelText: 'Name', hintText: 'Enter your full name'),
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      validator: (text) {
        if (text!.isEmpty) {
          return "Please enter a valid email";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Email', hintText: 'Enter your email'),
      onSaved: (value) {
        _email = value!;
      },
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      obscureText: true,
      maxLength: 10,
      validator: (text) {
        if (text!.isEmpty) {
          return "Please enter a password";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Password', hintText: 'Enter your password'),
      onSaved: (value) {
        _password = value!;
      },
    );
  }

  Widget _buildConfirmPasswordField() {
    return TextFormField(
      obscureText: true,
      maxLength: 10,
      validator: (text) {
        if (text!.isEmpty) {
          return "Confirm entered password password";
        }
        return null;
      },
      decoration: const InputDecoration(
          labelText: 'Confirm password', hintText: 'Confirm entered password'),
      onSaved: (value) {
        _password = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(24.0),
          child: Form(
              child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 50.0, bottom: 25.0),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.blueGrey,
                    size: 150,
                  )
                  // const Image(image: AssetImage('assets/userIconImage.jpg')),
                  ),
              const Text(
                "Let's Get Started",
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildNameField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildEmailField(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildPasswordField(),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: _buildConfirmPasswordField(),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  height: 30,
                  width: 250,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10.0)),
              const Text('You can continue with'),
              const Padding(
                padding:
                    EdgeInsets.only(left: 80.0, top: 20.0, right: 80.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.indigo,
                      size: 40,
                    ),
                    Spacer(),
                    Icon(
                      Icons.apple,
                      size: 40,
                    ),
                    Spacer(),
                    SizedBox(
                      width: 35,
                      height: 35,
                      child: Image(image: AssetImage('assets/GoogleIcon.png')),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 80.0, top: 10),
                child: Row(
                  children: [
                    Text('Already Have an account?'),
                    Text(
                      'SignIn',
                      style: TextStyle(color: Colors.brown),
                    )
                  ],
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

class HelperValidator {
  static String? nameValidate(String value) {
    if (value.isEmpty) {
      return "Name can't be empty";
    }
    if (value.length < 2) {
      return "Name must be at least 2 characters long";
    }
    if (value.length > 50) {
      return "Name must be less than 50 characters long";
    }
    return null;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_form/common/gender_radio.dart';
import 'package:registration_form/common/label.dart';
import 'package:registration_form/common/validating_field.dart';
import 'package:registration_form/utils/util.dart';

import '../common/password_field.dart';
import '../core/validation.dart';
import 'information_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Validation {
  final _formKey = GlobalKey<FormState>();
  String? password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Register')),
        body: SingleChildScrollView(
          padding: bodyPadding,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    child: Image.asset('assets/profile.png'),
                    maxRadius: 60,
                    minRadius: 50,
                  ),
                ),
                Label(labelText: 'First Name*'),
                VTextField(
                  icon: Icons.assignment_ind,
                  placeholder: 'Enter you first name',
                  format: [FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))],
                  validator: nameValidation,
                ),
                Label(labelText: 'Last Name*'),
                VTextField(
                  icon: Icons.assignment_ind,
                  placeholder: 'Enter your Last name',
                  format: [FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))],
                  validator: nameValidation,
                ),
                Label(labelText: 'Phone Number*'),
                VTextField(
                  icon: Icons.phone,
                  placeholder: 'Enter your 10 digit phone number',
                  format: [FilteringTextInputFormatter.allow(RegExp("[0-9]"))],
                  validator: phoneValidation,
                  keyboard: TextInputType.number,
                ),
                Label(labelText: 'Email*'),
                VTextField(
                  icon: Icons.mail,
                  placeholder: 'Enter a valid email',
                  validator: emailValidation,
                ),
                Label(labelText: 'Gender'),
                const GenderRadio(),
                Label(labelText: 'Password*'),
                PVTextField(
                  hasSuffix: true,
                  placeholder: 'Password',
                  validator: passwordValidation,
                  onSaved: (string) {
                    setState(() {
                      password = string;
                    });
                  },
                ),
                Label(labelText: 'Confirm Password*'),
                PVTextField(
                  placeholder: 'Password',
                  hasSuffix: false,
                  validator: (text) => cpValidation(text, password),
                ),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    clipBehavior: Clip.none,
                    style: ElevatedButton.styleFrom(shape: const RoundedRectangleBorder()),
                    child: Label(labelText: 'Next'),
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const InfoPage()));
                      // }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

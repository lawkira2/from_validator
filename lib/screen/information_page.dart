import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:registration_form/common/drop_down_field.dart';
import 'package:registration_form/common/label.dart';
import 'package:registration_form/common/validating_field.dart';
import 'package:registration_form/core/validation.dart';
import 'package:registration_form/utils/util.dart';

class InfoPage extends StatefulWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> with Validation {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('Your Info')),
        body: SingleChildScrollView(
          padding: bodyPadding,
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Label(labelText: 'Qualification'),
                VDropDownField(
                    items: Education.values
                        .map((e) => DropdownMenuItem(value: e, child: Text(e.name.toCapital())))
                        .toList(),
                    placeholder: 'Select your Qualification'),
                Label(labelText: 'Year of Passing'),
                VTextField(
                    validator: (value) => null,
                    placeholder: 'Enter year of passing',
                    keyboard: TextInputType.number,
                    format: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))]),
                Label(labelText: 'Grade'),
                VTextField(
                    format: [FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9]'))],
                    validator: (value) => null,
                    placeholder: 'Enter your grade or percentage'),
                const Divider(
                  height: 18,
                  thickness: 1,
                ),
                HeadlingText(text: 'Professional Info'),
                const SizedBox(height: 10),
                Label(labelText: 'Experience'),
                VTextField(
                  validator: (string) => null,
                  placeholder: 'Enter the year of Experience',
                  format: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
                ),
                Label(labelText: 'Designation'),
                VTextField(validator: (s) => null, placeholder: 'your Designation'),
                Label(labelText: 'Domain')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

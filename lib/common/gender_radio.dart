import 'package:flutter/material.dart';
import 'package:registration_form/common/label.dart';

import '../utils/util.dart';

class GenderRadio extends StatefulWidget {
  const GenderRadio({Key? key}) : super(key: key);

  @override
  State<GenderRadio> createState() => _GenderRadioState();
}

class _GenderRadioState extends State<GenderRadio> {
  Gender _currentGender = Gender.male;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                  value: Gender.male,
                  groupValue: _currentGender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _currentGender = value!;
                    });
                  }),
              Label(labelText: 'Male')
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                  value: Gender.female,
                  groupValue: _currentGender,
                  onChanged: (Gender? value) {
                    setState(() {
                      _currentGender = value!;
                    });
                  }),
              Label(labelText: 'Female')
            ],
          ),
        )
      ],
    );
  }
}

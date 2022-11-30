import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm(
      {Key? key,
      required this.formkey,
      required this.minValueSetter,
      required this.maxValueSetter})
      : super(key: key);

  final GlobalKey<FormState> formkey;

  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RangeSelectorTextFormField(
              labelText: 'Minimum',
              intValueSetter: minValueSetter,
            ),
            SizedBox(height: 12),
            RangeSelectorTextFormField(
              labelText: 'Maximum',
              intValueSetter: maxValueSetter,
            ),
          ],
        ),
      ),
    );
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    Key? key,
    required this.labelText,
    required this.intValueSetter,
  }) : super(key: key);

  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: labelText),
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'Must be an integer';
        } else {
          return null;
        }
      },
      onSaved: ((newValue) => intValueSetter(int.parse(newValue ?? ''))),
    );
  }
}

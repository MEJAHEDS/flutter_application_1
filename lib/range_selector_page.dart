import 'package:flutter/material.dart';
import 'package:flutter_application_1/randomizer_page.dart';
import 'package:flutter_application_1/range_selector_form.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formkey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select range'),
      ),
      body: RangeSelectorForm(
        formkey: formkey,
        minValueSetter: ((value) => _min = value),
        maxValueSetter: ((value) => _max = value),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          if (formkey.currentState?.validate() == true) {
            formkey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RandomizePage(min: _min, max: _max)));
          }
        },
      ),
    );
  }
}

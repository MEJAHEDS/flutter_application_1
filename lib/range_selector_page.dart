import 'package:flutter/material.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select range'),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RangeSelectorTextFormField(
                labelText: 'Minimum',
              ),
              SizedBox(height: 12),
              RangeSelectorTextFormField(
                labelText: 'Maximum',
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_forward),
        onPressed: () {
          // TODO :validate the Form
          // TODO : Navigate to the genetrator page
        },
      ),
    );
  }
}

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({
    Key? key,
    required this.labelText,
  }) : super(key: key);

  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: labelText),
      keyboardType: TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
    );
  }
}

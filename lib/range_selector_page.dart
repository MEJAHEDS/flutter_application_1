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
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Minimum")),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                  signed: true,
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Maximum")),
                keyboardType: TextInputType.numberWithOptions(
                  decimal: false,
                  signed: true,
                ),
              )
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

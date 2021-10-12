import 'package:flutter/material.dart';

class RateUsFeedbackScreen extends StatefulWidget {
  RateUsFeedbackScreen({Key? key}) : super(key: key);

  static const String routeName = '/RateUsFeedbackScreen';

  @override
  _RateUsFeedbackScreenState createState() => _RateUsFeedbackScreenState();
}

class _RateUsFeedbackScreenState extends State<RateUsFeedbackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rate Us Feedback')),
      body: Container(),
    );
  }
}

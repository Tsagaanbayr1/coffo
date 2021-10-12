import 'package:flutter/material.dart';

class HelpSupportScreen extends StatefulWidget {
  HelpSupportScreen({Key? key}) : super(key: key);

  static const String routeName = '/HelpSupportScreen';

  @override
  _HelpSupportScreenState createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Help & Support')),
      body: Container(),
    );
  }
}

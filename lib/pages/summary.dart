import 'package:flutter/material.dart';
import 'package:my_assistant/widgets/appbar.dart';

class Summary extends StatelessWidget {
  const Summary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Summary'),
      body: Container(),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hola mundo', style: Theme.of(context).textTheme.bodyText1),
    );
  }
}

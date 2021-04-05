import 'package:flutter/material.dart';
import 'package:portafolio/src/utils/values/responsive.dart';
import 'package:portafolio/src/utils/values/theme_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Responsive responsiveApp;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My portfolio',
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        responsiveApp = Responsive(context);
        return Theme(
            data: ThemeApp(responsiveApp).themeApp, child: MyPortfolio());
      },
    );
  }
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Center(
        child: Text('hola mundo', style: Theme.of(context).textTheme.bodyText1),
      ),
    );
  }
}

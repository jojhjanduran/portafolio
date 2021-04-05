import 'package:flutter/material.dart';
import 'package:portafolio/src/utils/values/responsive.dart';
import 'package:portafolio/src/utils/values/theme_app.dart';

import 'src/ui/pages/home.dart';

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

class MyPortfolio extends StatefulWidget {
  @override
  _MyPortfolioState createState() => _MyPortfolioState();
}

class _MyPortfolioState extends State<MyPortfolio> {
  int indexPage = 0;
  List<Widget> pages = [Home()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: pages[indexPage]);
  }
}

import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:portafolio/src/bloc/main_bloc.dart';
import 'package:portafolio/src/utils/values/responsive.dart';
import 'package:portafolio/src/utils/values/theme_app.dart';

import 'src/ui/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  Responsive responsiveApp;
  MainBloc bloc;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      child: MaterialApp(
        title: 'My portfolio',
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          bloc = BlocProvider.of<MainBloc>(context);
          bloc.setResponsiveApp(Responsive(context));
          return Theme(
              data: ThemeApp(bloc.responsiveApp).themeApp,
              child: MyPortfolio());
        },
      ),
      bloc: MainBloc(),
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
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
        ),
        backgroundColor: Theme.of(context).backgroundColor,
        body: pages[indexPage]);
  }
}

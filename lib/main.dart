import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:portafolio/src/bloc/main_bloc.dart';
import 'package:portafolio/src/ui/widgets/drawer.dart';
import 'package:portafolio/src/utils/values/responsive.dart';
import 'package:portafolio/src/utils/values/theme_app.dart';

import 'src/ui/pages/home.dart';
import 'src/utils/values/content_info.dart';

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
        key: UniqueKey(),
        appBar: buildAppBar(context),
        drawer: MainDrawer(),
        backgroundColor: Theme.of(context).backgroundColor,
        body: pages[indexPage]);
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      elevation: 0,
      leading: Builder(
          builder: (context) => IconButton(
              icon: Icon(Icons.menu),
              onPressed: () => Scaffold.of(context).openDrawer())),
    );
  }
}

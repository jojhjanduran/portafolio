import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:portafolio/src/bloc/main_bloc.dart';
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
        appBar: AppBar(
          backgroundColor: Theme.of(context).backgroundColor,
          elevation: 0,
          leading: Builder(
              builder: (context) => IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer())),
        ),
        drawer: drawer(),
        backgroundColor: Theme.of(context).backgroundColor,
        body: pages[indexPage]);
  }

  Container drawer() {
    return Container(
      width: 250,
      child: Drawer(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName:
                    Text(name, style: Theme.of(context).textTheme.headline4),
                accountEmail: Text(email),
                decoration:
                    BoxDecoration(color: Theme.of(context).backgroundColor),
                //currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/cody.jpg')),
              ),
              getItem(
                onTap: () {},
                title: 'About',
                icon: Icons.article_outlined,
              ),
              getItem(
                onTap: () {},
                title: 'My Skills',
                icon: Icons.location_on_outlined,
              ),
              getItem(
                onTap: () {},
                title: 'Contact',
                icon: Icons.lock_outline,
              ),
            ],
          ),
        ),
      ),
    );
  }

  getItem({String title, IconData icon, onTap}) {
    return ListTile(
      onTap: onTap,
      title: Text(title, style: Theme.of(context).textTheme.bodyText2),
      leading: Icon(
        icon,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }
}

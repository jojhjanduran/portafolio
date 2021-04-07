import 'package:flutter/material.dart';
import 'package:portafolio/src/utils/values/content_info.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Drawer(
        child: Container(
          color: Theme.of(context).backgroundColor,
          child: Column(
            children: [
              drawerHeader(context),
              SizedBox(height: 100),
              getItem(
                context: context,
                onTap: () {},
                title: 'About',
                icon: Icons.article_outlined,
              ),
              getItem(
                context: context,
                onTap: () {},
                title: 'My Skills',
                icon: Icons.location_on_outlined,
              ),
              getItem(
                context: context,
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

  UserAccountsDrawerHeader drawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: Text(name, style: Theme.of(context).textTheme.headline4),
      accountEmail: Text(email),
      decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
      //currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('assets/images/cody.jpg')),
    );
  }

  getItem({BuildContext context, String title, IconData icon, onTap}) {
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

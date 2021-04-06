import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:portafolio/src/bloc/main_bloc.dart';
import 'package:portafolio/src/utils/values/content_info.dart';

class Home extends StatelessWidget {
  MainBloc bloc;
  @override
  Widget build(BuildContext context) {
    bloc = BlocProvider.of<MainBloc>(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 150),
              profileContent(context),
              SizedBox(height: 20),
              Text('technologies I have worked',
                  style: Theme.of(context).textTheme.headline3),
              SizedBox(height: 20),
              tecnologyList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget tecnologyList() {
    return GridView.count(
      childAspectRatio: 4 / 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      crossAxisCount: 4,
      shrinkWrap: true,
      children: [
        Container(
          color: Colors.white,
          child: Text('texto'),
        ),
        Container(
          color: Colors.white,
          child: Text('texto'),
        ),
        Container(
          color: Colors.white,
          child: Text('texto'),
        ),
        Container(
          color: Colors.white,
          child: Text('texto'),
        ),
        Container(
          color: Colors.white,
          child: Text('texto'),
        )
      ],
    );
  }

  Row profileContent(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        profileImage(),
        profileInfo(context),
      ],
    );
  }

  Stack profileImage() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: bloc.responsiveApp.containerWidth,
          height: bloc.responsiveApp.containerHeight,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              color: Colors.transparent),
          margin: EdgeInsets.only(right: 50),
        ),
        Positioned(
          top: -30,
          left: 30,
          child: Container(
            width: bloc.responsiveApp.containerWidth,
            height: bloc.responsiveApp.containerHeight,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Flexible profileInfo(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline1,
                  children: [
                TextSpan(text: 'Hi,\n'),
                TextSpan(text: 'Im $name,\n'),
                TextSpan(text: '$profession\n'),
                TextSpan(
                    text: '$developerInfo\n',
                    style: Theme.of(context).textTheme.headline2),
              ])),
          Container(
            width: 200,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.white, style: BorderStyle.solid)),
            child: Center(
                child: Text(
              'About me',
              style: Theme.of(context).textTheme.headline3,
            )),
          ),
        ],
      ),
    );
  }
}

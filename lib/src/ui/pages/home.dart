import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 200,
                        height: 300,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            color: Colors.transparent),
                        margin: EdgeInsets.only(right: 50),
                      ),
                      Positioned(
                        top: -30,
                        left: 30,
                        child: Container(
                          width: 200,
                          height: 300,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Flexible(
                    child: RichText(
                        text: TextSpan(
                            style: Theme.of(context).textTheme.headline1,
                            children: [
                          TextSpan(text: 'Hi,\n'),
                          TextSpan(text: 'Im Johan Manuel Duran Parra,\n'),
                          TextSpan(text: 'Systems engeenering\n'),
                          TextSpan(
                              text: 'Frontend & backend developer\n',
                              style: Theme.of(context).textTheme.headline2),
                        ])),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

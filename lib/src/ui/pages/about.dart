import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ABOUT ME',
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(height: 50),
            Text(
                "Hello, I'm Johan Duran a systems engineer with more than 3 years of experience in software development in web and mobile environments as frontend and backend. ",
                style: Theme.of(context).textTheme.headline1),
            SizedBox(height: 30),
            Text(
                "Hello, I'm Johan Duran a systems engineer with more than 3 years of experience in software development in web and mobile environments as frontend and backend. ",
                style: Theme.of(context).textTheme.headline2),
            SizedBox(height: 30),
            Text(
                "Hello, I'm Johan Duran a systems engineer with more than 3 years of experience in software development in web and mobile environments as frontend and backend. ",
                style: Theme.of(context).textTheme.headline1),
            SizedBox(height: 50),
            Container(
              width: 200,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white, style: BorderStyle.solid)),
              child: Center(child: Text('Curriculum Vitae')),
            )
          ],
        ),
      ),
    ));
  }
}

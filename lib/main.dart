import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 4,
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            children: [
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
                ontap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
                ontap: null,
              ),
              CalculatorButton.icon(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'Backspace',
                icon: Icons.backspace,
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '/',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'X',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '-',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Colors.white,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                ontap: null,
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: '+',
                ontap: null,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData icon;
  final Function ontap;

  CalculatorButton({
    @required this.backgroundColor,
    @required this.foregroundColor,
    @required this.text,
    @required this.ontap,
  });

  CalculatorButton.icon({
    @required this.backgroundColor,
    @required this.foregroundColor,
    @required this.icon,
    @required this.text,
    @required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: backgroundColor,
        child: Center(
          child: icon == null
              ? Text(
                  text,
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      .copyWith(color: foregroundColor),
                )
              : Icon(
                  icon,
                  color: foregroundColor,
                ),
        ),
      ),
    );
  }
}

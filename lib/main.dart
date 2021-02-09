import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';
import 'symbols.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

final List<dynamic> buttons = [
  'R',
  'AC',
  '％',
  '÷',
  '7',
  '8',
  '9',
  '×',
  '4',
  '5',
  '6',
  '―',
  '1',
  '2',
  '3',
  '+',
  '23',
  '0',
  '.',
  '=',
];

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    const bgColor = const Color(0xFF22252E);
    const typeArea = const Color(0xFF292D36);
    const bgBtn = const Color(0xFF272B34);
    const operatorColor = const Color(0xFFD06D70);
    const topItemColor = const Color(0xFF45EAC7);
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: typeArea,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return Container();
                    }

                    // Currency Converter icon
                    if (index == 1) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/conv.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }

                    // Subtraction icon
                    if (index == 11) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/subs.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }

                    // Delete icon
                    if (index == 16) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/back.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }

                    // Percentage icon
                    if (index == 2) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/perc.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }

                    // Divide icon
                    if (index == 3) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/divide.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }

                    // Multiplication icon
                    if (index == 7) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/mult.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }

                    //Addition icon
                    if (index == 15) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/add.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }

                    //Answer icon
                    if (index == 19) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Symbol(
                          url: 'lib/assets/ans.png',
                          colorbg: bgBtn,
                        ),
                      );
                    }
                    // The rest Buttons
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CalButtons(
                        buttonText: buttons[index],
                        color: bgBtn,
                        textColor: isOperator(buttons[index])
                            ? operatorColor
                            : Colors.white,
                        size: isOperator(buttons[index]) ? 40 : 35,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == "＋" || x == "×" || x == "―" || x == "+" || x == "=") {
    return true;
  }
  return false;
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: layoutWidget(),
    ),
  ));
}

class layoutWidget extends StatelessWidget {
  const layoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 1,
          child: Row(
            children: [
              Flexible(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.teal,
                  child: Center(
                    child: Text(
                      "L",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.blueGrey,
                  child: Center(
                    child: Text(
                      "a",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.lime,
                  child: Center(
                    child: Text(
                      "y",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            color: Colors.indigo,
            child: Center(
              child: Text(
                "o",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),
              ),
            ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Row(
            children: [
              Flexible(
                child: Container(
                  color: Colors.lightGreen,
                  child: Center(
                    child: Text(
                      "u",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Container(
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      "t",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

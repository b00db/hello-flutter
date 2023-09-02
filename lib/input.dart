import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Body(),
      ),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleWidget(),
        CheckboxWidget(),
        RadioWidget(),
        TextFieldWidget(),
        SliderWidget(),
        Padding(
          padding: EdgeInsets.only(top: 50, left: 20),
          child: Text(
            "감사합니다.",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Center(
        child: Text(
          "과일 선호도 조사",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  late List<bool> values;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    values = [false, false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionWidget("1. 어떤 과일을 좋아하나요?"),
          ListTile(
            leading: Checkbox(
              value: values[0],
              onChanged: (value) => checkValue(0, value: value),
            ),
            title: Text("사과"),
            onTap: () {
              setState(() {
                values[0] = !values[0];
              });
            },
          ),
          ListTile(
            leading: Checkbox(
              value: values[1],
              onChanged: (value) => checkValue(1, value: value),
            ),
            title: Text("딸기"),
            onTap: () {
              setState(() {
                values[1] = !values[1];
              });
            },
          ),
          ListTile(
            leading: Checkbox(
              value: values[2],
              onChanged: (value) => checkValue(2, value: value),
            ),
            title: Text("포도"),
            onTap: () {
              setState(() {
                values[2] = !values[2];
              });
            },
          ),
          ListTile(
            leading: Checkbox(
              value: values[3],
              onChanged: (value) => checkValue(3, value: value),
            ),
            title: Text("오렌지"),
            onTap: () {
              setState(() {
                values[3] = !values[3];
              });
            },
          ),
        ],
      ),
    );
  }

  void checkValue(int index, {bool? value = false}) {
    setState(() {
      values[index] = value!;
    });
  }
}

class RadioWidget extends StatefulWidget {
  const RadioWidget({super.key});

  @override
  State<RadioWidget> createState() => _RadioWidgetState();
}

enum RadioValue {
  yes,
  no,
}

class _RadioWidgetState extends State<RadioWidget> {
  RadioValue? selectValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionWidget("2. 껍질도 먹나요?"),
          ListTile(
            leading: Radio<RadioValue>(
                value: RadioValue.yes,
                groupValue: selectValue,
                onChanged: (value) {
                  setState(() {
                    selectValue = value;
                  });
                }),
            title: Text("예"),
            onTap: () {
              setState(() {
                if (selectValue != RadioValue.yes) {
                  selectValue = RadioValue.yes;
                }
              });
            },
          ),
          ListTile(
            leading: Radio<RadioValue>(
                value: RadioValue.no,
                groupValue: selectValue,
                onChanged: (value) {
                  setState(() {
                    selectValue = value;
                  });
                }),
            title: Text("아니요"),
            onTap: () {
              setState(() {
                if (selectValue != RadioValue.no) {
                  selectValue = RadioValue.no;
                }
              });
            },
          ),
        ],
      ),
    );
  }
}

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key});

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  String? inputValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionWidget("3. 가장 좋아하는 과일은 무엇인가요?"),
          TextField(
            onChanged: (value) {
              setState(() {
                inputValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}

class QuestionWidget extends StatelessWidget {
  final String text;

  QuestionWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        fontSize: 18,
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({super.key});

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionWidget("4. 얼마나 좋아하나요?"),
          Slider(
            label: value.round().toString(),
            divisions: 10,
            max: 10,
            min: 0,
            value: value,
            onChanged: (newValue) {
              setState(() {
                value = newValue;
              });
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SettingDetials extends StatefulWidget {
  @override
  _SettingDetialsState createState() => _SettingDetialsState();
}

class _SettingDetialsState extends State<SettingDetials> {
  List<Map<String, int>> detialLisin = [
    {'محمدالصديق المشناوي': 0},
    {'محمود الحصري': 0},
    {'عبد الباسط عبد الصمد': 0}
  ];
  var isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AlertDialog(
        title: Text(
          'الاعدادات',
          textAlign: TextAlign.center,
        ),
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ...detialLisin.map((title) => MaterialButton(
                  onPressed: () {
                    setState(() {
                      List<Map<String, int>> detialLisin1 = [];
                      detialLisin.forEach((element) {
                        if (title != element) {
                          element = {element.keys.first: 0};
                          detialLisin1.add(element);
                        } else {
                          element = {element.keys.first: 1};
                          detialLisin1.add(element);
                        }
                      });
                      detialLisin.clear();
                      detialLisin1.forEach((element) {
                        detialLisin.add(element);
                      });
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title.values.first == 1) Icon(Icons.check),
                      Tab(text: title.keys.first),
                    ],
                  )))
            ],
          )
        ],
      )
    ]);
  }
}

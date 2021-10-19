import 'package:flutter/material.dart';
import 'package:great_tafsirs1/featursSetting/settingdetials.dart';

import 'Choose an interpretation.dart';
import 'dowanlodspecefic.dart';
import 'download.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<String> listining = [
    'اخيتار قارئ',
    'تنزيل السور  ',
    'تنزيل الصور اليت تحتوي ايات ',
    'اختيار التفسير'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AlertDialog(
          title: Text(
            'الاعدادات',
            textAlign: TextAlign.center,
          ),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ...listining.map((title) => MaterialButton(
                    onPressed: () {
                      if (title == listining[0]) {
                        showDialog(
                            context: context,
                            builder: (context) => SettingDetials());
                      } else if (title == listining[1]) {
                        showDialog(
                            context: context, builder: (context) => Download());
                      } else if (title == listining[2]) {
                        showDialog(
                            context: context,
                            builder: (context) => DownloaSpefic());
                      } else if (title == listining[3]) {
                        showDialog(
                            context: context,
                            builder: (context) => SettingDetialstfseer());
                      }
                    },
                    child: Tab(text: title)))
              ],
            )
          ],
        )
      ],
    );
  }
}

Widget detial() {
  List detialLisin = ['محمد الصديق ', 'محمود الصحري ', 'عبدالباسط عبد الصمد '];
  // ignore: unused_local_variable
  var isCheckedCell = false;
  return Column(children: [
    AlertDialog(
      title: Text(
        'الاعدادات',
        textAlign: TextAlign.center,
      ),
      actions: [
        Column(
          children: [
            ...detialLisin.map((title) => MaterialButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(Icons.check),
                    Tab(text: title),
                  ],
                )))
          ],
        )
      ],
    )
  ]);
}

// // import 'package:flutter/material.dart';
// //
// // import 'package:untitled1/constant.dart';
// //
// // class Task {
// //   IconData? icon;
// //   String? title;
// //   Color? bgcolor;
// //   Color? iconcolor;
// //   Color? btncolor;
// //   List<Map<String,dynamic>>? desc;
// //   num? left;
// //   num? done;
// //   bool? isLast;
// //
// //   Task({this.icon, this.title, this.bgcolor, this.iconcolor,
// //     this.btncolor, this.left, this.desc, this.done, this.isLast = false});
// //
// //   static List<Task> generateTasks() {
// //     return [
// //       Task(
// //         icon: Icons.person_rounded,
// //         title: 'Personal',
// //         bgcolor: kBlueLight,
// //         iconcolor: kBlueDark,
// //         btncolor: kBlue,
// //         left: 5,
// //         done: 3,
// //         desc: [{
// //           'time':'9.00 AM',
// //           'title':'create a video',
// //           'slot':'9:00 AM - 10:00 AM',
// //           't1color': Colors.redAccent,
// //           'bgcolor': Colors.red.shade100,
// //         },
// //           {
// //             'time':'10.00 AM',
// //             'title':'watching a movie',
// //             'slot':'10:00 AM - 11:00 AM',
// //             't1color': Colors.blue,
// //             'bgcolor': Colors.blue.shade100,
// //           },
// //           {
// //             'time':'11.00 AM',
// //             'title':'',
// //             'slot':'',
// //             't1color': Colors.redAccent,
// //             'bgcolor': Colors.red.shade100,
// //           },
// //           {
// //             'time':'12.00 PM',
// //             'title':'go to gym',
// //             'slot':'12:00 PM - 1:00 PM',
// //             't1color': Colors.blue,
// //             'bgcolor': Colors.blue.shade100,
// //           },
// //           {
// //             'time':'1.00 PM',
// //             'title':'watching a movie',
// //             'slot':'1:00 PM - 2:00 PM',
// //             't1color': Colors.redAccent,
// //             'bgcolor': Colors.red.shade100,
// //           },
// //         ],
// //         isLast: false,
// //
// //       ),
// //
// //       Task(
// //
// //         icon: Icons.work,
// //         title: 'Work',
// //         bgcolor: kYellowLight,
// //         iconcolor: kYellowDark,
// //         btncolor: kYellow,
// //         left: 1,
// //         done: 4,
// //         isLast: false,
// //       ),
// //       Task(
// //         icon: Icons.favorite_rounded,
// //         title: 'Health',
// //         bgcolor: kRedLight,
// //         iconcolor: kRedDark,
// //         btncolor: kRed,
// //         left: 2,
// //         done: 6,
// //         isLast: false,
// //       ),
// //       Task(
// //         icon: Icons.person_rounded,
// //         title: 'Personal',
// //         bgcolor: kBlueLight,
// //         iconcolor: kBlueDark,
// //         btncolor: kBlue,
// //         left: 5,
// //         done: 3,
// //         isLast: true,
// //
// //       ),
// //
// //     ];
// //   }
// // }
// import 'package:flutter/material.dart';
//
// class Task {
//   String? id; // optional Firestore document ID
//   IconData? icon;
//   String? title;
//   Color? bgcolor;
//   Color? iconcolor;
//   Color? btncolor;
//   List<Map<String, dynamic>>? desc;
//   num? left;
//   num? done;
//   bool? isLast;
//
//   Task({
//     this.id,
//     this.icon,
//     this.title,
//     this.bgcolor,
//     this.iconcolor,
//     this.btncolor,
//     this.left,
//     this.desc,
//     this.done,
//     this.isLast = false,
//   });
//
//   factory Task.fromMap(Map<String, dynamic> data, [String? id]) {
//     return Task(
//       id: id,
//       title: data['title'],
//       icon: IconData(data['icon'], fontFamily: 'MaterialIcons'),
//       iconcolor: Color(data['iconcolor']),
//       bgcolor: Color(data['bgcolor']),
//       btncolor: data['btncolor'] != null ? Color(data['btncolor']) : null,
//       left: data['left'],
//       done: data['done'],
//       isLast: false,
//     );
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'title': title,
//       'icon': icon?.codePoint,
//       'iconcolor': iconcolor?.value,
//       'bgcolor': bgcolor?.value,
//       'btncolor': btncolor?.value,
//       'left': left,
//       'done': done,
//     };
//   }
// }
import 'package:flutter/material.dart';
import 'constant.dart';

class Task {
  String? id;
  IconData? icon;
  String? title;
  Color? bgcolor;
  Color? iconcolor;
  Color? btncolor;
  List<Map<String, dynamic>>? desc;
  num? left;
  num? done;
  bool? isLast;

  Task({
    this.id,
    this.icon,
    this.title,
    this.bgcolor,
    this.iconcolor,
    this.btncolor,
    this.left,
    this.desc,
    this.done,
    this.isLast = false,
  });

  // ✅ For Firestore deserialization
  factory Task.fromMap(Map<String, dynamic> data, [String? id]) {
    return Task(
      id: id,
      title: data['title'],
      icon: IconData(data['icon'], fontFamily: 'MaterialIcons'),
      iconcolor: Color(data['iconcolor']),
      bgcolor: Color(data['bgcolor']),
      btncolor: data['btncolor'] != null ? Color(data['btncolor']) : null,
      left: data['left'],
      done: data['done'],
      isLast: false,
    );
  }

  // ✅ For Firestore serialization
  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'icon': icon?.codePoint,
      'iconcolor': iconcolor?.value,
      'bgcolor': bgcolor?.value,
      'btncolor': btncolor?.value,
      'left': left,
      'done': done,
    };
  }

  // ✅ Dummy task generator for local testing
  static List<Task> generateTasks() {
    return [
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        desc: [
          {
            'time': '9.00 AM',
            'title': 'Create a video',
            'slot': '9:00 AM - 10:00 AM',
            't1color': Colors.redAccent,
            'bgcolor': Colors.red.shade100,
          },
          {
            'time': '10.00 AM',
            'title': 'Watch a movie',
            'slot': '10:00 AM - 11:00 AM',
            't1color': Colors.blue,
            'bgcolor': Colors.blue.shade100,
          },
          {
            'time': '12.00 PM',
            'title': 'Go to gym',
            'slot': '12:00 PM - 1:00 PM',
            't1color': Colors.blue,
            'bgcolor': Colors.blue.shade100,
          },
        ],
      ),
      Task(
        icon: Icons.work,
        title: 'Work',
        bgcolor: kYellowLight,
        iconcolor: kYellowDark,
        btncolor: kYellow,
        left: 1,
        done: 4,
      ),
      Task(
        icon: Icons.favorite_rounded,
        title: 'Health',
        bgcolor: kRedLight,
        iconcolor: kRedDark,
        btncolor: kRed,
        left: 2,
        done: 6,
      ),
      Task(
        icon: Icons.person_rounded,
        title: 'Personal',
        bgcolor: kBlueLight,
        iconcolor: kBlueDark,
        btncolor: kBlue,
        left: 5,
        done: 3,
        isLast: true,
      ),
    ];
  }
}

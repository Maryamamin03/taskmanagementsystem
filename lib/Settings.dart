import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:taskms/MenuePage.dart';
import 'package:taskms/constant.dart';
import 'package:taskms/customText.dart';
import 'package:taskms/privacySecurity.dart';
import 'package:taskms/upper_header.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isNotification = true;
  bool isSound = true;

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: he * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              upperHeader('Settings', context, false, page: const menuPage()),
              SizedBox(height: he * 0.035),

              // Tasks + Box
              Container( padding: EdgeInsets.all(he * 0.004),
                decoration: BoxDecoration( borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight, colors:
                  [ Color.fromARGB(255, 208, 240, 1),
                    Color.fromARGB(255, 253, 178, 53), ], ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(he * 0.012),
                  child: Row(
                    children: [
                      Container(
                        height: he * 0.07,
                        width: he * 0.07,
                        padding: EdgeInsets.all(he * 0.01),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300],
                        ),
                        child: ColorFiltered(colorFilter: ColorFilter.mode(
                          const Color.fromARGB(255, 224, 224, 224).withOpacity(0.6),
                          BlendMode.srcATop),
                          child: Icon(
                            Icons.workspace_premium_outlined,
                            size: 30,
                            color: MyThemeColor.textColor,
                          ),
                        ),
                  ),
                      SizedBox(width: he * 0.015),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                customText('Tasks', 26),
                                SizedBox(width: he * 0.005),
                                const Icon(
                                  Icons.add,
                                  size: 25,
                                  color: Color.fromARGB(255, 141, 127, 65),
                                ),
                              ],
                            ),
                           SizedBox(height: he*0.005,),
                            const Text(
                              'Unlock our most exclusive features',
                              style: TextStyle(
                                fontSize: 10,
                                color: MyThemeColor.textColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                     const Icon(
                        Icons.arrow_forward_ios,
                        size: 20,
                       color: Color.fromARGB(255, 22, 23, 22),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: he * 0.03),

              // Sounds toggle
              Row(
                children: [
                  if (isSound == true)
                    Icon(
                      Icons.volume_up_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    )
                  else
                    Icon(
                      Icons.volume_off_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                  SizedBox(
                    width: he * 0.015,
                  ),
                  const Text(
                    "Sounds",
                    style: TextStyle(
                      fontSize: 18,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                    value: isSound,
                    onChanged: (bool value) {
                      setState(() {
                        isSound = value;
                      });
                    },
                  ),
                ],
              ),

              SizedBox(
                width: he * 0.025,
              ),
              // Notifications toggle
              Row(
                children: [
                  if (isNotification == true)
                    Icon(
                      Icons.notifications_active_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    )
                  else
                    Icon(
                      Icons.notifications_off_outlined,
                      size: 25,
                      color: MyThemeColor.textColor,
                    ),
                  SizedBox(
                    height: he * 0.015,
                  ),
                  const Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 18,
                      color: MyThemeColor.textColor,
                    ),
                  ),
                  Expanded(child: Container()),
                  CupertinoSwitch(
                    value: isNotification,
                    onChanged: (bool value) {
                      setState(() {
                        isNotification = value;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: he * 0.025,
              ),
          GestureDetector(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const PrivacySecurity()));
            },
           child:  Row(
              children: [
                Icon(
                  Icons.lock_open_outlined,
                  size: 25,
                  color: MyThemeColor.textColor,
                ),
                SizedBox(
                  width: he * 0.015,
                ),
                const Text(
                  "Privacy & Security",
                  style: TextStyle(
                    fontSize: 18,
                    color: MyThemeColor.textColor,
                  ),
                ),
                Expanded(child: Container()),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: MyThemeColor.textColor,
                  size: 20,
                ),
              ],
            ),

          ),
              SizedBox(
                height: he * 0.025,
              ),

              GestureDetector(
                onTap: () {
                  // Outer GestureDetector action (if needed)
                },
                child: GestureDetector(
                  onTap: () {
                    // Inner GestureDetector action (probably you only need this)
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.info_outline,
                        size: 25,
                        color: MyThemeColor.textColor,
                      ),
                      SizedBox(
                        width: he * 0.015,
                      ),
                      const Text(
                        "About App",
                        style: TextStyle(
                          fontSize: 18,
                          color: MyThemeColor.textColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: MyThemeColor.textColor,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),


              SizedBox(
                height: he * 0.025,
              ),
          GestureDetector(
            onTap: () {
              // Outer GestureDetector action (if needed)
            },child:
            Row( children: [ Icon( Icons.lock_open_outlined, size: 25, color: MyThemeColor.textColor, ), SizedBox( width: he * 0.015, ), const Text( "Privacy & Security", style: TextStyle( fontSize: 18, color: MyThemeColor.textColor, ), ), Expanded(child: Container()), Icon( Icons.arrow_forward_ios, color: MyThemeColor.textColor, size: 20, ),],),),
              // About App
              SizedBox(
                height: he * 0.025,
              ),
              // Help & Support
          GestureDetector(
            onTap: () {
              // Outer GestureDetector action (if needed)
            },
            child: Row(
              children: [
                Icon(
                  Icons.help_outline,
                  size: 25,
                  color: MyThemeColor.textColor,
                ),
                SizedBox(
                  width: he * 0.015,
                ),
                const Text(
                  "Help & Support",
                  style: TextStyle(
                    fontSize: 18,
                    color: MyThemeColor.textColor,
                  ),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_forward_ios,
                  color: MyThemeColor.textColor,
                  size: 20,
                ),
              ],
            ),
          ),
              SizedBox(
                height: he * 0.025,
              ),
              const Divider(
                color: Colors.blue,
                thickness: 1,
              ),
              SizedBox(
                height: he * 0.025,
              ),
          GestureDetector(
            onTap: () {
              // Outer GestureDetector action (if needed)
            },
            child: const Text('Sign Out',
              style: TextStyle(fontSize: 17,color: MyThemeColor.textColor),
            ),
          ),
              SizedBox(
                height: he * 0.02,
              ),
              GestureDetector(
                onTap: () {
                  // Outer GestureDetector action (if needed)
                },
                child: const Text('VERSION 1.2.34',
                  style: TextStyle(fontSize: 17,color: MyThemeColor.textColor),
                ),
              ),

              // Sign Out + Version



              SizedBox(height: he * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}

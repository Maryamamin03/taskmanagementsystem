// import 'package:flutter/material.dart';
// import 'package:taskms/constant.dart';
//
//
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   @override
//   Widget build(BuildContext context) {
//     var he = MediaQuery
//         .of(context)
//         .size
//         .height;
//     return Scaffold(
//       resizeToAvoidBottomInset: true, // Important to avoid overflow
//       backgroundColor: MyThemeColor.backgroundColor,
//       body: SafeArea(
//         child: SingleChildScrollView( // Wrap content with scrollable
//           padding: EdgeInsets.only(
//             left: he * 0.03,
//             right: he * 0.03,
//             top: he * 0.03,
//             bottom: 20, // add bottom padding
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(
//                 height: 20,
//               ),
//               Text(
//                 'First Name',
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: he * 0.01,
//               ),
//               SizedBox(
//                 height: he * 0.045,
//                 child: TextFormField(
//                   keyboardType: TextInputType.name,
//                     decoration: InputDecoration(
//                         contentPadding: EdgeInsets.only(left: 10, top: 12),
//                         hintText: 'Amogh',
//                         hintStyle: TextStyle(
//                           color: Colors.grey[700],
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide:const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                         ),
//                     ),
//               ),
//               SizedBox(
//                 height: he * 0.02,
//               ),
//           Text(
//             'Last Name',
//             style: TextStyle(
//               color: Colors.grey[600],
//               fontSize: 16,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(
//             height: he * 0.01,
//           ),
//           SizedBox(
//             height: he * 0.045,
//             child: TextFormField(
//               decoration: InputDecoration(
//                 contentPadding: EdgeInsets.only(left: 10, top: 12),
//                 hintText: 'kulkarni',
//                 hintStyle: TextStyle(
//                   color: Colors.grey[700],
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: BorderSide(
//                     color: MyThemeColor.textColor,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(
//                     color: MyThemeColor.textColor,
//                   ),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                   borderSide: const BorderSide(
//                     color: MyThemeColor.textColor,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//               SizedBox(
//                 height: he * 0.01,
//               ),
//               Text(
//                 'Username',
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: he * 0.00,
//               ),
//               Row(children: [
//                 SizedBox(
//                   height: he*0.045,
//                   width: he*0.20,
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(left: 10, top: 12),
//                       hintText: 'amogh24',
//                       hintStyle: TextStyle(
//                         color: Colors.grey[700],
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(child: Container(),),
//                 TextButton(onPressed: (){}, child: Text('Change Username',style:TextStyle(color: Colors.blueAccent))),
//                 Icon(Icons.edit,color:Colors.blueAccent,size:10,)
//               ],),
//               SizedBox(
//                 height: he * 0.01,
//               ),
//               Text(
//                 'Phone Number',
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: he * 0.00,
//               ),
//               Row(children: [
//                 SizedBox(
//                   height: he*0.045,
//                   width: he*0.20,
//
//                   child: TextFormField(
// keyboardType: TextInputType.number,
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(left: 10, top: 12),
//                       hintText: '+92234567897',
//                       hintStyle: TextStyle(
//                         color: Colors.grey[700],
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(child: Container(),),
//                 TextButton(onPressed: (){}, child: Text('Change Number',style:TextStyle(color: Colors.blueAccent))),
//               Icon(Icons.edit,color:Colors.blueAccent,size:10,)
//               ],),
//
//               SizedBox(
//                 height: he * 0.01,
//               ),
//               Text(
//                 'Email',
//                 style: TextStyle(
//                   color: Colors.grey[600],
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               SizedBox(
//                 height: he * 0.00,
//               ),
//               Row(children: [
//                 SizedBox(
//                   height: he*0.045,
//                   width: he*0.24,
//
//                   child: TextFormField(
//                     keyboardType: TextInputType.emailAddress,
//                     decoration: InputDecoration(
//                       contentPadding: EdgeInsets.only(left: 10, top: 12),
//                       hintText: 'abcdefgh@gmail.com',
//                       hintStyle: TextStyle(
//                         color: Colors.grey[700],
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       focusedBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                       enabledBorder: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                         borderSide: const BorderSide(
//                           color: MyThemeColor.textColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(child: Container(),),
//                 TextButton(onPressed: (){}, child: Text('Change email',style:TextStyle(color: Colors.blueAccent))),
//                 Icon(Icons.arrow_forward_ios,color:Colors.blueAccent,size:10,)
//               ],),
//               SizedBox(height: he*0.01,),
//               Divider(
//                 color: Colors.grey[300],
//                 thickness: 1,
//               ),
//               SizedBox(
//                 height: he * 0.01,
//               ), // SizedBox
//
//               Row(
//                 children: [
//                   Text(
//                     'Add Account',
//                     style: TextStyle(
//                       color: Colors.grey[600],
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500 ,
//                     ), // TextStyle
//                   ), // Text
//                   Expanded(
//                     child: Container(),
//                   ), // Expanded
//                   Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.blueAccent,
//                     size: 21,
//                   ), // Icon
//                 ],
//               ),
//               SizedBox(height: he*0.01,),
//               Row(
//                 children: [
//                   Text(
//                     'Switch Account',
//                     style: TextStyle(
//                       color: Colors.grey[600],
//                       fontSize: 18,
//                       fontWeight: FontWeight.w500,
//                     ), // TextStyle
//                   ), // Text
//                   Expanded(
//                     child: Container(),
//                   ), // Expanded
//                   Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.blueAccent,
//                     size: 21,
//                   ), // Icon
//                 ],
//               ),
// SizedBox(height: he*0.01,),
//               GestureDetector(
//                 onTap: () {},
//                 child: Text(
//                   'Log Out',
//                   style: TextStyle(
//                     color: Colors.blueAccent,
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//         ),
//       ),
//     );
//   }}
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart'; // Firebase
// import 'package:untitled1/constant.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   final _firstNameController = TextEditingController();
//   final _lastNameController = TextEditingController();
//   final _usernameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _emailController = TextEditingController();
//
//   Future<void> saveProfileToFirestore() async {
//     try {
//       await FirebaseFirestore.instance.collection('users').add({
//         'first_name': _firstNameController.text.trim(),
//         'last_name': _lastNameController.text.trim(),
//         'username': _usernameController.text.trim(),
//         'phone': _phoneController.text.trim(),
//         'email': _emailController.text.trim(),
//         'created_at': Timestamp.now(),
//       });
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Profile saved successfully!')),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error saving profile: $e')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var he = MediaQuery.of(context).size.height;
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: MyThemeColor.backgroundColor,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(horizontal: he * 0.03, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20),
//               buildLabel('First Name'),
//               buildTextField(_firstNameController, 'Amogh', TextInputType.name, he),
//               SizedBox(height: he * 0.02),
//               buildLabel('Last Name'),
//               buildTextField(_lastNameController, 'Kulkarni', TextInputType.name, he),
//               SizedBox(height: he * 0.02),
//               buildLabel('Username'),
//               buildRowField(_usernameController, 'amogh24', 'Change Username', Icons.edit, he),
//               SizedBox(height: he * 0.02),
//               buildLabel('Phone Number'),
//               buildRowField(_phoneController, '+92234567897', 'Change Number', Icons.edit, he, isNumber: true),
//               SizedBox(height: he * 0.02),
//               buildLabel('Email'),
//               buildRowField(_emailController, 'abcdefgh@gmail.com', 'Change Email', Icons.arrow_forward_ios, he, isEmail: true),
//               SizedBox(height: he * 0.02),
//               Divider(color: Colors.grey[300]),
//               SizedBox(height: he * 0.02),
//               buildNavRow('Add Account', Icons.arrow_forward_ios),
//               buildNavRow('Switch Account', Icons.arrow_forward_ios),
//               SizedBox(height: he * 0.02),
//               GestureDetector(
//                 onTap: () {},
//                 child: Text(
//                   'Log Out',
//                   style: TextStyle(color: Colors.blueAccent, fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(height: he * 0.04),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: saveProfileToFirestore,
//                   child: Text('Save Profile'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildLabel(String text) {
//     return Text(
//       text,
//       style: TextStyle(color: Colors.grey[600], fontSize: 16, fontWeight: FontWeight.bold),
//     );
//   }
//
//   Widget buildTextField(TextEditingController controller, String hint, TextInputType inputType, double he) {
//     return SizedBox(
//       height: he * 0.045,
//       child: TextFormField(
//         controller: controller,
//         keyboardType: inputType,
//         decoration: inputDecoration(hint),
//       ),
//     );
//   }
//
//   Widget buildRowField(
//       TextEditingController controller,
//       String hint,
//       String btnText,
//       IconData icon,
//       double he, {
//         bool isNumber = false,
//         bool isEmail = false,
//       }) {
//     return Row(
//       children: [
//         // Expand the text field to take all available width
//         Expanded(
//           child: SizedBox(
//             height: he * 0.045,
//             child: TextFormField(
//               controller: controller,
//               keyboardType: isNumber
//                   ? TextInputType.number
//                   : (isEmail ? TextInputType.emailAddress : TextInputType.text),
//               decoration: inputDecoration(hint),
//             ),
//           ),
//         ),
//         SizedBox(width: 8),
//         // Fit the button and icon together without overflow
//         FittedBox(
//           fit: BoxFit.scaleDown,
//           child: Row(
//             children: [
//               TextButton(
//                 onPressed: () {},
//                 child: Text(btnText, style: TextStyle(color: Colors.blueAccent)),
//               ),
//               Icon(icon, color: Colors.blueAccent, size: 12),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget buildNavRow(String label, IconData icon) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Row(
//         children: [
//           Text(
//             label,
//             style: TextStyle(color: Colors.grey[600], fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//           Expanded(child: Container()),
//           Icon(icon, color: Colors.blueAccent, size: 21),
//         ],
//       ),
//     );
//   }
//
//   InputDecoration inputDecoration(String hintText) {
//     return InputDecoration(
//       contentPadding: EdgeInsets.only(left: 10, top: 12),
//       hintText: hintText,
//       hintStyle: TextStyle(color: Colors.grey[700], fontSize: 14, fontWeight: FontWeight.bold),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: MyThemeColor.textColor),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: MyThemeColor.textColor),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: MyThemeColor.textColor),
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:untitled1/constant.dart';
//
// class ProfilePage extends StatefulWidget {
//   const ProfilePage({super.key});
//
//   @override
//   State<ProfilePage> createState() => _ProfilePageState();
// }
//
// class _ProfilePageState extends State<ProfilePage> {
//   final _firstNameController = TextEditingController();
//   final _lastNameController = TextEditingController();
//   final _usernameController = TextEditingController();
//   final _phoneController = TextEditingController();
//   final _emailController = TextEditingController();
//
//   @override
//   void initState() {
//     super.initState();
//     loadProfile();
//   }
//
//   Future<void> loadProfile() async {
//     final user = FirebaseAuth.instance.currentUser;
//     if (user == null) return;
//
//     final doc = await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
//     if (doc.exists) {
//       final data = doc.data()!;
//       _firstNameController.text = data['first_name'] ?? '';
//       _lastNameController.text = data['last_name'] ?? '';
//       _usernameController.text = data['username'] ?? '';
//       _phoneController.text = data['phone'] ?? '';
//       _emailController.text = data['email'] ?? '';
//     }
//   }
//
//   Future<void> saveProfileToFirestore() async {
//     try {
//       final user = FirebaseAuth.instance.currentUser;
//       if (user == null) {
//         throw 'User not logged in';
//       }
//
//       await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
//         'first_name': _firstNameController.text.trim(),
//         'last_name': _lastNameController.text.trim(),
//         'username': _usernameController.text.trim(),
//         'phone': _phoneController.text.trim(),
//         'email': _emailController.text.trim(),
//         'updated_at': Timestamp.now(),
//       });
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Profile saved successfully!')),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error saving profile: $e')),
//       );
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var he = MediaQuery.of(context).size.height;
//     return Scaffold(
//       resizeToAvoidBottomInset: true,
//       backgroundColor: MyThemeColor.backgroundColor,
//       body: SafeArea(
//         child: SingleChildScrollView(
//           padding: EdgeInsets.symmetric(horizontal: he * 0.03, vertical: 20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 20),
//               buildLabel('First Name'),
//               buildTextField(_firstNameController, 'Amogh', TextInputType.name, he),
//               SizedBox(height: he * 0.02),
//               buildLabel('Last Name'),
//               buildTextField(_lastNameController, 'Kulkarni', TextInputType.name, he),
//               SizedBox(height: he * 0.02),
//               buildLabel('Username'),
//               buildRowField(_usernameController, 'amogh24', 'Change Username', Icons.edit, he),
//               SizedBox(height: he * 0.02),
//               buildLabel('Phone Number'),
//               buildRowField(_phoneController, '+92234567897', 'Change Number', Icons.edit, he, isNumber: true),
//               SizedBox(height: he * 0.02),
//               buildLabel('Email'),
//               buildRowField(_emailController, 'abcdefgh@gmail.com', 'Change Email', Icons.arrow_forward_ios, he, isEmail: true),
//               SizedBox(height: he * 0.02),
//               Divider(color: Colors.grey[300]),
//               SizedBox(height: he * 0.02),
//               buildNavRow('Add Account', Icons.arrow_forward_ios),
//               buildNavRow('Switch Account', Icons.arrow_forward_ios),
//               SizedBox(height: he * 0.02),
//               GestureDetector(
//                 onTap: () {
//                   FirebaseAuth.instance.signOut();
//                   Navigator.of(context).pushReplacementNamed('/login');
//                 },
//                 child: Text(
//                   'Log Out',
//                   style: TextStyle(color: Colors.blueAccent, fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               SizedBox(height: he * 0.04),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: saveProfileToFirestore,
//                   child: Text('Save Profile'),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget buildLabel(String text) {
//     return Text(
//       text,
//       style: TextStyle(color: Colors.grey[600], fontSize: 16, fontWeight: FontWeight.bold),
//     );
//   }
//
//   Widget buildTextField(TextEditingController controller, String hint, TextInputType inputType, double he) {
//     return SizedBox(
//       height: he * 0.045,
//       child: TextFormField(
//         controller: controller,
//         keyboardType: inputType,
//         decoration: inputDecoration(hint),
//       ),
//     );
//   }
//
//   Widget buildRowField(
//       TextEditingController controller,
//       String hint,
//       String btnText,
//       IconData icon,
//       double he, {
//         bool isNumber = false,
//         bool isEmail = false,
//       }) {
//     return Row(
//       children: [
//         Expanded(
//           child: SizedBox(
//             height: he * 0.045,
//             child: TextFormField(
//               controller: controller,
//               keyboardType: isNumber
//                   ? TextInputType.number
//                   : (isEmail ? TextInputType.emailAddress : TextInputType.text),
//               decoration: inputDecoration(hint),
//             ),
//           ),
//         ),
//         SizedBox(width: 8),
//         FittedBox(
//           fit: BoxFit.scaleDown,
//           child: Row(
//             children: [
//               TextButton(
//                 onPressed: () {},
//                 child: Text(btnText, style: TextStyle(color: Colors.blueAccent)),
//               ),
//               Icon(icon, color: Colors.blueAccent, size: 12),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
//
//   Widget buildNavRow(String label, IconData icon) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 4.0),
//       child: Row(
//         children: [
//           Text(
//             label,
//             style: TextStyle(color: Colors.grey[600], fontSize: 18, fontWeight: FontWeight.w500),
//           ),
//           Expanded(child: Container()),
//           Icon(icon, color: Colors.blueAccent, size: 21),
//         ],
//       ),
//     );
//   }
//
//   InputDecoration inputDecoration(String hintText) {
//     return InputDecoration(
//       contentPadding: EdgeInsets.only(left: 10, top: 12),
//       hintText: hintText,
//       hintStyle: TextStyle(color: Colors.grey[700], fontSize: 14, fontWeight: FontWeight.bold),
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: MyThemeColor.textColor),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: MyThemeColor.textColor),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(10),
//         borderSide: BorderSide(color: MyThemeColor.textColor),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:taskms/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
    loadProfile();
  }

  Future<void> loadProfile() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    final doc =
    await FirebaseFirestore.instance.collection('users').doc(user.uid).get();
    if (doc.exists) {
      final data = doc.data()!;
      _firstNameController.text = data['first_name'] ?? '';
      _lastNameController.text = data['last_name'] ?? '';
      _usernameController.text = data['username'] ?? '';
      _phoneController.text = data['phone'] ?? '';
      _emailController.text = data['email'] ?? '';
    }
  }

  Future<void> saveProfileToFirestore() async {
    try {
      final user = FirebaseAuth.instance.currentUser;
      if (user == null) throw 'User not logged in';

      await FirebaseFirestore.instance.collection('users').doc(user.uid).set({
        'first_name': _firstNameController.text.trim(),
        'last_name': _lastNameController.text.trim(),
        'username': _usernameController.text.trim(),
        'phone': _phoneController.text.trim(),
        'email': _emailController.text.trim(),
        'updated_at': Timestamp.now(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Profile saved successfully!')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving profile: $e')),
      );
    }
  }

  Future<void> updateSingleField(String fieldName, String value) async {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;

    try {
      await FirebaseFirestore.instance
          .collection('users')
          .doc(user.uid)
          .update({fieldName: value, 'updated_at': Timestamp.now()});

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('$fieldName updated successfully')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to update $fieldName: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MyThemeColor.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: he * 0.03, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              buildLabel('First Name'),
              buildTextField(_firstNameController, 'Amogh', TextInputType.name, he),
              SizedBox(height: he * 0.02),
              buildLabel('Last Name'),
              buildTextField(_lastNameController, 'Kulkarni', TextInputType.name, he),
              SizedBox(height: he * 0.02),
              buildLabel('Username'),
              buildRowField(_usernameController, 'amogh24', 'Save', Icons.edit, he),
              SizedBox(height: he * 0.02),
              buildLabel('Phone Number'),
              buildRowField(_phoneController, '+92234567897', 'Save', Icons.edit, he, isNumber: true),
              SizedBox(height: he * 0.02),
              buildLabel('Email'),
              buildRowField(_emailController, 'abcdefgh@gmail.com', 'Save', Icons.arrow_forward_ios, he, isEmail: true),
              SizedBox(height: he * 0.02),
              Divider(color: Colors.grey[300]),
              SizedBox(height: he * 0.02),
              buildNavRow('Add Account', Icons.arrow_forward_ios),
              buildNavRow('Switch Account', Icons.arrow_forward_ios),
              SizedBox(height: he * 0.02),
              GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: Text(
                  'Log Out',
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: he * 0.04),
              Center(
                child: ElevatedButton(
                  onPressed: saveProfileToFirestore,
                  child: Text('Save Profile'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildLabel(String text) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.grey[600], fontSize: 16, fontWeight: FontWeight.bold),
    );
  }

  Widget buildTextField(TextEditingController controller, String hint,
      TextInputType inputType, double he) {
    return SizedBox(
      height: he * 0.045,
      child: TextFormField(
        controller: controller,
        keyboardType: inputType,
        decoration: inputDecoration(hint),
      ),
    );
  }

  Widget buildRowField(
      TextEditingController controller,
      String hint,
      String btnText,
      IconData icon,
      double he, {
        bool isNumber = false,
        bool isEmail = false,
      }) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: he * 0.045,
            child: TextFormField(
              controller: controller,
              keyboardType: isNumber
                  ? TextInputType.number
                  : (isEmail ? TextInputType.emailAddress : TextInputType.text),
              decoration: inputDecoration(hint),
            ),
          ),
        ),
        SizedBox(width: 8),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Row(
            children: [
              TextButton(
                onPressed: () async {
                  String field;
                  if (controller == _usernameController) {
                    field = 'username';
                  } else if (controller == _phoneController) {
                    field = 'phone';
                  } else if (controller == _emailController) {
                    field = 'email';
                  } else {
                    return;
                  }
                  await updateSingleField(field, controller.text.trim());
                },
                child: Text(btnText, style: TextStyle(color: Colors.blueAccent)),
              ),
              Icon(icon, color: Colors.blueAccent, size: 12),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNavRow(String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          Expanded(child: Container()),
          Icon(icon, color: Colors.blueAccent, size: 21),
        ],
      ),
    );
  }

  InputDecoration inputDecoration(String hintText) {
    return InputDecoration(
      contentPadding: EdgeInsets.only(left: 10, top: 12),
      hintText: hintText,
      hintStyle: TextStyle(
          color: Colors.grey[700], fontSize: 14, fontWeight: FontWeight.bold),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: MyThemeColor.textColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: MyThemeColor.textColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: MyThemeColor.textColor),
      ),
    );
  }
}

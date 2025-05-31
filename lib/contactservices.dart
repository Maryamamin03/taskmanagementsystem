import 'package:cloud_firestore/cloud_firestore.dart';

class ContactService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> submitContactForm({
    required String name,
    required String email,
    required String message,
  }) async {
    await _firestore.collection('contacts').add({
      'name': name,
      'email': email,
      'message': message,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }
}

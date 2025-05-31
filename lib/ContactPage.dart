
import 'package:flutter/material.dart';
import 'package:taskms/upper_header.dart';
import 'package:taskms/MenuePage.dart';
import 'package:taskms/contactservices.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  final ContactService _contactService = ContactService();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  bool _isSubmitting = false;

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() => _isSubmitting = true);

      await _contactService.submitContactForm(
        name: _nameController.text.trim(),
        email: _emailController.text.trim(),
        message: _messageController.text.trim(),
      );

      setState(() => _isSubmitting = false);
      _nameController.clear();
      _emailController.clear();
      _messageController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Message sent successfully')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var he = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: he * 0.03),
            child: Column(
              children: [
                upperHeader('Contact Us', context, true, page: menuPage()),
                SizedBox(height: he * 0.02),
                Container(
                  height: he * 0.4,
                  width: he * 0.35,
                  child: const Image(image: AssetImage('images/img1.jpeg')),
                ),
                Text(
                  'We are here to help you',
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: he * 0.02),
                Form(
                  key: _formKey,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: he * 0.03, right: he * 0.03, bottom: 20),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'Enter your name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your name';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter your email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null ||
                                  !value.contains('@') ||
                                  !value.contains('.')) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),
                          TextFormField(
                            controller: _messageController,
                            maxLines: 4,
                            decoration: InputDecoration(
                              labelText: 'Message',
                              hintText: 'Enter your message',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a message';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 17),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: _isSubmitting ? null : _submitForm,
                              child: _isSubmitting
                                  ? const CircularProgressIndicator(
                                color: Colors.white,
                              )
                                  : const Text("Send"),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey.shade900,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  const ResetPasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: controller.resetPasswordFormKey,
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            const Text(
              "Reset Password",
              style: TextStyle(
                color: Color(0xff110c26),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Please enter your email address to request a password reset",
              style: TextStyle(
                color: Color(0xff110c26),
              ),
            ),
            const SizedBox(height: 12),
            email(),
            const SizedBox(height: 32),
            send(),
          ],
        ),
      ),
    );
  }

  Widget email() {
    return TextFormField(
      controller: controller.emailController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email address',
        hintText: 'abc@email.com',
        prefixIcon: Image.asset("assets/icon_email.png"),
      ),
    );
  }

  Widget send() {
    return ElevatedButton(
      onPressed: () {},
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Text('Send'),
          Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              backgroundColor: Color(0xFF3D56F0),
              child: Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:event_booking/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: controller.signUpFormKey,
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            const Text(
              "Sign up",
              style: TextStyle(
                color: Color(0xff110c26),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            fullname(),
            const SizedBox(height: 12),
            email(),
            const SizedBox(height: 12),
            password(),
            const SizedBox(height: 12),
            confirmPassword(),
            const SizedBox(height: 32),
            signUp(),
            const SizedBox(height: 12),
            const Center(child: Text('or')),
            const SizedBox(height: 12),
            loginWithGoogle(),
            const SizedBox(height: 12),
            loginWithFacebook(),
            const SizedBox(height: 24),
            signIn(),
          ],
        ),
      ),
    );
  }

  Widget fullname() {
    return TextFormField(
      controller: controller.fullNameController,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Full name',
        hintText: 'Full name',
        prefixIcon: Image.asset("assets/icon_user.png"),
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

  Widget password() {
    return Obx(
      () => TextFormField(
        controller: controller.passwordController,
        keyboardType: TextInputType.text,
        obscureText: controller.isObscurePassword.value,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Your password',
          prefixIcon: Image.asset("assets/icon_lock.png"),
          suffixIcon: IconButton(
            onPressed: () {
              controller.isObscurePassword.toggle();
            },
            icon: controller.isObscurePassword.value
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          ),
        ),
      ),
    );
  }

  Widget confirmPassword() {
    return Obx(
      () => TextFormField(
        controller: controller.confirmPasswordController,
        keyboardType: TextInputType.text,
        obscureText: controller.isObscureConfirmPassword.value,
        decoration: InputDecoration(
          labelText: 'Confirm Password',
          hintText: 'Confirm password',
          prefixIcon: Image.asset("assets/icon_lock.png"),
          suffixIcon: IconButton(
            onPressed: () {
              controller.isObscureConfirmPassword.toggle();
            },
            icon: controller.isObscureConfirmPassword.value
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          ),
        ),
      ),
    );
  }

  Widget signUp() {
    return ElevatedButton(
      onPressed: () {
        Get.toNamed(Routes.OTP_VERIFICATION);
      },
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Text('SIGN UP'),
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

  Widget loginWithGoogle() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        "assets/google.svg",
        width: 25,
        height: 25,
      ),
      label: const Text('Log in with Google'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey.shade700,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget loginWithFacebook() {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: SvgPicture.asset(
        "assets/facebook.svg",
        width: 25,
        height: 25,
      ),
      label: const Text('Log in with Facebook'),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.grey.shade700,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget signIn() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Already have an account?"),
        TextButton(
          onPressed: () {
            Get.offAllNamed(Routes.SIGN_IN);
          },
          child: const Text("Sign in"),
        )
      ],
    );
  }
}

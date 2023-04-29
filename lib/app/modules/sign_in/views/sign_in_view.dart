import 'package:event_booking/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../controllers/sign_in_controller.dart';

class SignInView extends GetView<SignInController> {
  const SignInView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: controller.signInFormKey,
        child: ListView(
          padding: const EdgeInsets.all(32),
          children: [
            const SizedBox(height: 100),
            SvgPicture.asset(
              'assets/logo.svg',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 12),
            const Text(
              "Sign in",
              style: TextStyle(
                color: Color(0xff110c26),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 12),
            email(),
            const SizedBox(height: 12),
            password(),
            const SizedBox(height: 12),
            rememberMeNForgotpassword(),
            const SizedBox(height: 12),
            signIn(),
            const SizedBox(height: 12),
            const Center(child: Text('or')),
            const SizedBox(height: 12),
            loginWithGoogle(),
            const SizedBox(height: 12),
            loginWithFacebook(),
            const SizedBox(height: 24),
            signUp(),
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

  Widget password() {
    return Obx(
      () => TextFormField(
        controller: controller.passwordController,
        keyboardType: TextInputType.text,
        obscureText: controller.isObscure.value,
        decoration: InputDecoration(
          labelText: 'Password',
          hintText: 'Your password',
          prefixIcon: Image.asset("assets/icon_lock.png"),
          suffixIcon: IconButton(
            onPressed: () {
              controller.isObscure.toggle();
            },
            icon: controller.isObscure.value
                ? const Icon(Icons.visibility_outlined)
                : const Icon(Icons.visibility_off_outlined),
          ),
        ),
      ),
    );
  }

  Widget rememberMeNForgotpassword() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Obx(
              () => Switch(
                activeColor: Get.theme.primaryColor,
                value: controller.rememberMe.value,
                onChanged: (bool value) {
                  controller.rememberMe(value);
                },
              ),
            ),
            const Text('Remember me'),
          ],
        ),
        TextButton(
          onPressed: () {
            Get.toNamed(Routes.RESET_PASSWORD);
          },
          child: const Text("Forgot password?"),
        )
      ],
    );
  }

  Widget signIn() {
    return ElevatedButton(
      onPressed: () {
        Get.offAllNamed(Routes.HOME);
      },
      child: Stack(
        alignment: Alignment.center,
        children: const [
          Text('SIGN IN'),
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

  Widget signUp() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?"),
        TextButton(
          onPressed: () {
            Get.toNamed(Routes.SIGN_UP);
          },
          child: const Text("Sign up"),
        )
      ],
    );
  }
}

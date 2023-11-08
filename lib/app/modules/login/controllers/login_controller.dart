import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final obsecure = true.obs;
  final formKey = GlobalKey<FormState>();
  final password = TextEditingController();
  final email = TextEditingController();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    if (value.length < 8) {
      return 'Password min 8 character';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    if (!GetUtils.isEmail(value)) {
      return 'Invalid Email';
    }
    return null;
  }

  void submit() {
    final validated = formKey.currentState?.validate();
    if (validated == null || validated == false) {
      Get.snackbar("error", "error");
      return;
    }
    Get.snackbar("berhasil", "test");
  }
}

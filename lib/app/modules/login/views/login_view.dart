import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(Get.width * 0.05),
            child: Container(
              padding: EdgeInsets.all(Get.width * 0.05),
              width: Get.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Get.width * 0.05),
                  color: Colors.white,
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 10)
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: Get.width * 0.05),
                    child: const Text(
                    "LOGIN",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  ),
                  Form(
                    key: controller.formKey,
                    child: Column(
                     
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: Get.width * 0.035),
                          child: TextFormField(
                            autovalidateMode: AutovalidateMode.onUserInteraction,
                            controller: controller.email,
                            validator: controller.emailValidator,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.zero,
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.circular(Get.width * 0.025)),
                              labelText: "Email",
                              prefixIcon: const Icon(Icons.email),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: Get.width * 0.035),
                          child: Obx(
                            () => TextFormField(
                              autovalidateMode:
                                  AutovalidateMode.onUserInteraction,
                              controller: controller.password,
                              validator: controller.passwordValidator,
                              obscureText: controller.obsecure.value,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.zero,
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(Get.width * 0.025)),
                                labelText: "Password",
                                prefixIcon: const Icon(Icons.lock),
                                suffixIcon: IconButton(
                                  icon: Icon(controller.obsecure.value
                                      ? Icons.visibility
                                      : Icons.visibility_off),
                                  onPressed: () => controller.obsecure.toggle(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        
                        
                        SizedBox(
                          width: Get.width,
                          child: ElevatedButton(
                              onPressed: () => controller.submit(), child: Text("MASUK")),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

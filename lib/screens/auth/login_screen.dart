import 'package:andrea_project_mobile/controllers/auth_controller.dart';
import 'package:andrea_project_mobile/screens/auth/components/login_form_component.dart';
import 'package:andrea_project_mobile/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<AuthController> {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 5),
                  child: Icon(
                    Icons.lock,
                    color: Colors.grey[100],
                    size: 100,
                  ),
                ),
                Obx(
                  () => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      !controller.isRegister.value
                          ? '¡Hola de nuevo!'
                          : 'Registra una cuenta',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const LoginFormComponent(),
                Obx(
                  () => customButton(
                    function: () {},
                    content: Text(
                      !controller.isRegister.value ? 'INGRESAR' : 'REGISTRAR',
                      style: TextStyle(
                        color: Colors.grey[100],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Obx(
                  () => Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          !controller.isRegister.value
                              ? 'No tienes una cuenta? '
                              : 'Ya tienes una cuenta? ',
                          style: TextStyle(
                            color: Colors.grey[300],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            controller.clearTextControllers();

                            controller.isRegister.value =
                                !controller.isRegister.value;
                          },
                          child: Text(
                            !controller.isRegister.value
                                ? 'Registrate'
                                : 'Ingresa',
                            style: TextStyle(
                              color: Colors.grey[100],
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
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
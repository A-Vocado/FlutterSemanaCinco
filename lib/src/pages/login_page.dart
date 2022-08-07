import 'package:exercicio_semana_5/src/design_system/atoms/text/z_text_h1.dart';
import 'package:exercicio_semana_5/src/design_system/molecules/z_text_field.dart';
import 'package:flutter/material.dart';

import '../design_system/atoms/buttons/z_elevated_button.dart';
import '../validator/validator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 64),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 50.0),
                child: ZTextH1(text: 'Olá! Seja bem-vindo!'),
              ),
              ZFormField(
                controller: emailController,
                hintText: 'Insira seu e-mail para fazer login',
                labelText: 'E-mail',
                icon: const Icon(Icons.email),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                validate: Validator.validateField,
                onChanged: (email) {
                  debugPrint(email);
                },
              ),
              ZFormField(
                controller: passwordController,
                hintText: 'Senha',
                labelText: 'Senha',
                icon: const Icon(Icons.password),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
                validate: Validator.validateField,
                onChanged: (password) {
                  debugPrint(password);
                },
              ),
              ZElevatedButton(
                onPressed: () {
                  final isvalidForm = formKey.currentState!.validate();
                  if (isvalidForm) {
                    Navigator.of(context).pushReplacementNamed('/userPage');
                  }

                  emailController.clear();
                  passwordController.clear();
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

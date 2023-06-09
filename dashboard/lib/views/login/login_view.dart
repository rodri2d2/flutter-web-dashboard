import 'package:dashboard/resources/uiComponents/buttons/custom_outliined_button.dart';
import 'package:dashboard/resources/uiComponents/buttons/link_text.dart';
import 'package:dashboard/router/router.dart';
import 'package:flutter/material.dart';

import '../../resources/uiComponents/inputs/custom_input.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 100),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      color: Colors.black,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 370),
          child: Form(
            child: Column(children: [
              // Email
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: CustomInput.authInputDecoration(
                  hint: 'Enter your email',
                  label: 'Email',
                  icon: Icons.email_outlined,
                ),
              ),

              const SizedBox(height: 20),

              // Password
              TextFormField(
                  obscureText: true,
                  style: const TextStyle(color: Colors.white),
                  decoration: CustomInput.authInputDecoration(
                    hint: '*********',
                    label: 'Password',
                    icon: Icons.lock_outline_rounded,
                  )),

              const SizedBox(height: 20),

              CustomOutlinedButton(
                onPressed: () => print('Login'),
                text: 'Log in',
              ),

              const SizedBox(height: 20),

              LinkText(
                text: 'Create account',
                onPressed: () {
                  // TODO: navigato to create new account
                  Navigator.pushNamed(context, Flurorouter.registerRoute);
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}

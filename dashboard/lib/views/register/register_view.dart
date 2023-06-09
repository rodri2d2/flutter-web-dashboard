import 'package:dashboard/resources/uiComponents/buttons/custom_outliined_button.dart';
import 'package:dashboard/resources/uiComponents/buttons/link_text.dart';
import 'package:dashboard/resources/uiComponents/inputs/custom_input.dart';
import 'package:dashboard/router/router.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                  hint: 'Enter name',
                  label: 'Name',
                  icon: Icons.person_3_rounded,
                ),
              ),
              const SizedBox(height: 20),
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
                text: 'Create Account',
              ),

              const SizedBox(height: 20),

              LinkText(
                text: 'Login',
                onPressed: () {
                  Navigator.pushNamed(context, Flurorouter.loginRoute);
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}

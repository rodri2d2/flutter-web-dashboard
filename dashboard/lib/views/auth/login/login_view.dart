import 'package:dashboard/services/auth/auth_service.dart';

import '../../../essencial_imports.dart';
import 'package:dashboard/router/router.dart';
import 'package:dashboard/views/auth/login/login_view_model.dart';
import 'package:dashboard/resources/resources_imports.dart';
import 'package:dashboard/services/handles/validators/validation_imports.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);

    return ChangeNotifierProvider(
      create: (BuildContext context) => LoginViewModel(),
      child: Builder(builder: (context) {
        //
        final viewModel = Provider.of<LoginViewModel>(context, listen: true);

        //
        return Container(
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.black,
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: viewModel.formKey,
                child: Column(children: [
                  // Email
                  _buildTextField(
                    viewModel: viewModel,
                    onChanged: (value) => viewModel.email = value,
                    validator: (value) {
                      final result =
                          viewModel.emailValidator.validate(value ?? '');
                      return result is ValidationSuccess
                          ? null
                          : (result as ValidationError).error.message;
                    },
                    hint: 'Enter your email',
                    label: 'Email',
                    icon: Icons.email_outlined,
                  ),

                  const SizedBox(height: 20),

                  // Password
                  _buildTextField(
                    viewModel: viewModel,
                    onChanged: (value) => viewModel.password = value,
                    validator: (value) {
                      final result =
                          viewModel.passwordValidator.validate(value ?? '');
                      return result is ValidationSuccess
                          ? null
                          : (result as ValidationError).error.message;
                    },
                    hint: '*********',
                    label: 'Password',
                    icon: Icons.lock_outline_rounded,
                    obscureText: true,
                  ),

                  const SizedBox(height: 20),

                  CustomOutlinedButton(
                    onPressed: () {
                      final isValid = viewModel.validateForm();
                      if (isValid) {
                        authService.login(viewModel.email, viewModel.password);
                      }
                    },
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
      }),
    );
  }

  TextFormField _buildTextField({
    required LoginViewModel viewModel,
    required ValueChanged<String> onChanged,
    required FormFieldValidator<String>? validator,
    required String hint,
    required String label,
    required IconData icon,
    bool obscureText = false,
  }) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscureText,
      style: const TextStyle(color: Colors.white),
      decoration: CustomInput.authInputDecoration(
        hint: hint,
        label: label,
        icon: icon,
      ),
    );
  }
}

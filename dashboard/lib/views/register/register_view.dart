import 'package:dashboard/essencial_imports.dart';
import 'package:dashboard/router/router.dart';
import 'package:dashboard/views/register/register_view_model.dart';
import '../../resources/resources_imports.dart';
import '../../services/validators/validation_imports.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => RegisterViewModel(),
      child: Builder(builder: (context) {
        final viewModel = Provider.of<RegisterViewModel>(context, listen: true);

        return Container(
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          color: Colors.black,
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 370),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                key: viewModel.formKey,
                child: Column(children: [
                  // Email
                  _buildTextField(
                      viewModel: viewModel,
                      onChanged: (value) => viewModel.name = value,
                      validator: (value) {
                        final result =
                            viewModel.nameValidator.validate(value ?? '');
                        return result is ValidationSuccess
                            ? null
                            : (result as ValidationError).error.message;
                      },
                      hint: 'Enter name',
                      label: 'Name',
                      icon: Icons.person_3_rounded),
                  const SizedBox(height: 20),
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
                      icon: Icons.email_outlined),

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
                      obscureText: true),

                  const SizedBox(height: 20),

                  CustomOutlinedButton(
                    onPressed: () => viewModel.validateForm(),
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
      }),
    );
  }

  TextFormField _buildTextField({
    required RegisterViewModel viewModel,
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

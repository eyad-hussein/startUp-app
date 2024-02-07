import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AuthFormFieldType {
  name,
  password,
  email,
}

class AuthFormField extends StatefulWidget {
  const AuthFormField({
    super.key,
    required this.label,
    required this.type,
    required this.onChanged,
  });

  final String label;
  final AuthFormFieldType type;
  final void Function(String) onChanged;

  @override
  State<AuthFormField> createState() => _AuthFormFieldState();
}

// TODO :: Clean up the code -> create a validator class maybe
// TODO :: Create a password strength indicator class as well
class _AuthFormFieldState extends State<AuthFormField> {
  Color? suffixIconColor;

  @override
  Widget build(BuildContext context) {
    final Widget? suffixIcon;
    bool isObscureText = false;
    final String? Function(String?)? validator;
    final TextInputType? keyboardType;

    switch (widget.type) {
      case AuthFormFieldType.name:
        keyboardType = TextInputType.name;
        suffixIcon = Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/icons/check.svg',
            colorFilter: ColorFilter.mode(
              Theme.of(context).colorScheme.secondary,
              BlendMode.srcIn,
            ),
            fit: BoxFit.contain,
          ),
        );
        validator = (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter your name';
          }

          if (!RegExp(r"^[a-zA-Z'-\s]+$").hasMatch(value)) {
            return 'Please enter a valid name';
          }

          return null;
        };
        break;
      case AuthFormFieldType.password:
        keyboardType = TextInputType.visiblePassword;
        suffixIcon = Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Text(
            'Strong',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        );

        isObscureText = true;
        validator = (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a password';
          }

          if (!RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).{8,}$').hasMatch(value)) {
            return 'Password must be at least 8 characters long\nPassword must include both letters and numbers';
          }

          return null;
        };
        break;

      case AuthFormFieldType.email:
        keyboardType = TextInputType.emailAddress;
        suffixIcon = Padding(
          padding: const EdgeInsets.all(12),
          child: SvgPicture.asset(
            'assets/icons/check.svg',
            colorFilter: ColorFilter.mode(
              suffixIconColor ?? Theme.of(context).colorScheme.secondary,
              BlendMode.srcIn,
            ),
            fit: BoxFit.contain,
          ),
        );
        validator = (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter an email address';
          }

          final isValidEmail =
              RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
                  .hasMatch(value);

          if (!isValidEmail) {
            setState(() {
              suffixIconColor = Theme.of(context).colorScheme.error;
            });
            return 'Please enter a valid email address';
          }
          setState(() {
            suffixIconColor = Colors.green;
          });
          return null;
        };
        break;
    }
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: widget.onChanged,
      validator: validator,
      obscureText: isObscureText,
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: Theme.of(context).colorScheme.secondary,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: widget.label,
        labelStyle: TextStyle(
          color: Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: const EdgeInsets.only(bottom: 13),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFF8F959E),
          ),
        ),
      ),
    );
  }
}
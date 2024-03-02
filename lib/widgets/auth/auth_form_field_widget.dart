import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/shared/themes.dart';

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
              Theme.of(context).colorScheme.tertiary,
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
            style: kBodyLarge.copyWith(
              color: Theme.of(context).colorScheme.tertiary,
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
              suffixIconColor ?? Theme.of(context).colorScheme.tertiary,
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
            suffixIconColor = kCorrectColor;
          });
          return null;
        };
        break;
    }
    const OutlineInputBorder grayBorder = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    );
    return TextFormField(
      keyboardType: keyboardType,
      onChanged: widget.onChanged,
      validator: validator,
      obscureText: isObscureText,
      style: kBodyLarge.copyWith(
        color: Theme.of(context).colorScheme.primary,
      ),
      cursorColor: Theme.of(context).colorScheme.secondary,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: widget.label,
        labelStyle: kBodyLarge.copyWith(
          color: Theme.of(context).colorScheme.tertiary,
        ),
        contentPadding: const EdgeInsets.only(bottom: 13),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),
        border: widget.type == AuthFormFieldType.email ||
                widget.type == AuthFormFieldType.password
            ? grayBorder
            : null,
      ),
    );
  }
}

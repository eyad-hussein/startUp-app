import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum AuthFormFieldType {
  name,
  password,
}

class AuthFormField extends StatelessWidget {
  const AuthFormField(
      {super.key,
      required this.label,
      required this.type,
      required this.onChanged});

  final String label;
  final AuthFormFieldType type;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    final Widget? suffixIcon;
    bool isObscureText = false;

    switch (type) {
      case AuthFormFieldType.name:
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
        break;
      case AuthFormFieldType.password:
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
        break;
    }
    return TextFormField(
      onChanged: onChanged,
      obscureText: isObscureText,
      style: TextStyle(
        color: Theme.of(context).colorScheme.primary,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: Theme.of(context).colorScheme.secondary,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: label,
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

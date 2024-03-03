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
    this.showStrengthIndicator = false,
    this.borderRadius,
    this.borderColor = Colors.grey,
    this.fieldHeight,
    this.labelColor,
  });

  final String label;
  final AuthFormFieldType type;
  final void Function(String) onChanged;
  final bool showStrengthIndicator;
  final double? borderRadius;
  final Color borderColor;
  final double? fieldHeight;
  final Color? labelColor;

  @override
  State<AuthFormField> createState() => _AuthFormFieldState();
}

class _AuthFormFieldState extends State<AuthFormField> {
  bool _isObscureText = true;
  Color? suffixIconColor;

  @override
  Widget build(BuildContext context) {
    Widget? suffixIcon;
    final TextInputType? keyboardType;
    String? Function(String?)? validator;
    double bottomPadding = widget.fieldHeight ?? 20;
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
        suffixIcon = widget.showStrengthIndicator
            ? Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      'Strong',
                      style: kBodyLarge.copyWith(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        _isObscureText = !_isObscureText;
                      });
                    },
                    child: Text(
                      _isObscureText ? 'Show' : 'Hide',
                      style: const TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              )
            : TextButton(
                onPressed: () {
                  setState(() {
                    _isObscureText = !_isObscureText;
                  });
                },
                child: Text(
                  _isObscureText ? 'Show' : 'Hide',
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              );
        validator = (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a password';
          }
          if (!RegExp(r'^(?=.*[a-zA-Z])(?=.*\d).{8,}$').hasMatch(value)) {
            return 'Password must be at least 8 characters long and include both letters and numbers';
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
            suffixIconColor = null;
          });
          return null;
        };
        break;
    }

    return TextFormField(
      keyboardType: keyboardType,
      onChanged: widget.onChanged,
      validator: validator,
      obscureText:
          widget.type == AuthFormFieldType.password ? _isObscureText : false,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        labelText: widget.label,
        labelStyle: TextStyle(
          color: widget.labelColor ?? Colors.grey,
        ),
        contentPadding: EdgeInsets.only(
            left: 12,
            top: kVerticalSpaceRegular,
            right: 12,
            bottom: bottomPadding),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? kBorderRadiusRegular),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor, width: 3),
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? kBorderRadiusRegular),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: widget.borderColor),
          borderRadius: BorderRadius.circular(
              widget.borderRadius ?? kBorderRadiusRegular),
        ),
      ),
    );
  }
}

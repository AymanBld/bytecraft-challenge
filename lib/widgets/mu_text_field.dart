import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final String hint;
  final bool isPassword;
  final TextEditingController ctrl;

  const MyTextField({
    super.key,
    required this.hint,
    required this.isPassword,
    required this.ctrl,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        RegExp trueEmail = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$');

        if (value == '') {
          return 'The field can\'t be empty';
        }
        if (widget.isPassword && value!.length < 8) {
          return 'Password must be more then 8 charecters';
        }
        if (!widget.isPassword && !value!.contains(trueEmail)) {
          return 'Entre a valid email';
        }

        return null;
      },
      controller: widget.ctrl,
      obscureText: widget.isPassword && !isVisible,
      obscuringCharacter: '*',
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                icon: Icon(isVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined),
              )
            : null,
        contentPadding: const EdgeInsets.all(20),
        hintText: widget.hint,
        fillColor: Colors.grey[100],
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TextFormGlobal extends StatelessWidget {
  const TextFormGlobal({
    Key? key,
    required this.controller,
    required this.text,
    required this.textInputType,
    required this.obscure,
    required this.icon,
    required this.iconColor,
  }) : super(key: key);
  final TextEditingController controller;
  final String text;
  final TextInputType textInputType;
  final bool obscure;
  final IconData icon;
  final Color iconColor; // Properti tambahan untuk ikon

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 320,
      height: 55,
      padding: const EdgeInsets.only(
        top: 3,
        left: 15,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50),
          boxShadow: [
            BoxShadow(color: Colors.grey.withOpacity(0.8), blurRadius: 7),
          ]),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        obscureText: obscure,
        decoration: InputDecoration(
          hintText: text,
          // ignore: unnecessary_null_comparison
          prefixIcon: icon != null ? Icon(icon, color: iconColor) : null,
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(12),
        ),
      ),
    ));
  }
}

import 'package:aeta/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputWidget extends StatefulWidget {
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? hintText;
  final bool? obscureText;
  InputWidget({
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    super.key,
  });

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    Color _color = Utils.gray100;

    return SizedBox(
      height: 40,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Utils.backgroundColor,
        ),
        child: TextFormField(
          controller: widget.controller,
          obscureText: widget.obscureText!,
          style: GoogleFonts.poppins(
            fontSize: 16,
            color: Utils.dark_primary,
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
              horizontal: (widget.prefixIcon == null) ? 15 : 0,
            ),
            prefixIcon: (widget.prefixIcon == null)
                ? null
                : Icon(
                    widget.prefixIcon,
                    color: _color,
                  ),
            suffixIcon: (widget.suffixIcon == null)
                ? null
                : Icon(
                    widget.suffixIcon,
                    color: _color,
                  ),
            hintText: widget.hintText,
            hintStyle: GoogleFonts.poppins(
              fontWeight: FontWeight.w500,
              color: _color,
              fontSize: 14,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Utils.backgroundColor),
              borderRadius: BorderRadius.circular(10),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Utils.backgroundColor),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}

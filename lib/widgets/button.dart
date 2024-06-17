import 'package:aeta/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatefulWidget {
  final Function() function;
  final String text;
  const ButtonWidget({
    required this.text,
    required this.function,
    super.key,
  });

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: widget.function,
            style: TextButton.styleFrom(
              backgroundColor: Utils.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'ATUALIZAR',
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: Utils.blue,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

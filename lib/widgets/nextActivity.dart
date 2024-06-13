import 'package:aeta/widgets/utils.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextActivityCard extends StatefulWidget {
  final String? month;
  final String? activityType;
  final String? deadline;
  final String? time;
  final List<String>? address;
  
  NextActivityCard({
    required this.month,
    required this.activityType,
    required this.deadline,
    required this.time,
    required this.address,
    super.key,
  });

  @override
  State<NextActivityCard> createState() => _NextActivityCardState();
}

class _NextActivityCardState extends State<NextActivityCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Utils.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.month!,
            style: GoogleFonts.inter(
              fontSize: 12,
              color: Utils.gray100,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            widget.activityType!,
            style: GoogleFonts.inter(
              fontSize: 16,
              color: Utils.dark_primary,
              fontWeight: FontWeight.w700,
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'DATA LIMITE',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Utils.gray100,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    widget.deadline!,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Utils.dark_primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'HORÁRIO',
                    style: GoogleFonts.inter(
                      fontSize: 12,
                      color: Utils.gray100,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    widget.time!,
                    style: GoogleFonts.inter(
                      fontSize: 16,
                      color: Utils.dark_primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          DottedBorder(
            borderType: BorderType.RRect,
            color: Utils.gray100,
            radius: Radius.circular(15),
            padding: EdgeInsets.all(10),
            dashPattern: [6],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(),
                Text(
                  'ENDEREÇO DA ATIVIDADE',
                  style: GoogleFonts.inter(
                    fontSize: 10,
                    color: Utils.gray100,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.address!.first,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Utils.dark_primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  widget.address!.last,
                  style: GoogleFonts.inter(
                    fontSize: 16,
                    color: Utils.dark_primary,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

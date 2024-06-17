import 'package:aeta/widgets/icons.dart';
import 'package:aeta/widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWidget extends StatefulWidget {
  final List<String>? buttonTextList;
  final String? name;
  final String? role;
  final List<Function>? buttonFunctionList;

  static ValueNotifier<int> selectedIndex = ValueNotifier<int>(0);

  HeaderWidget({
    required this.name,
    required this.role,
    required this.buttonTextList,
    this.buttonFunctionList,
    super.key,
  });

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  @override
  void initState() {
    super.initState();
    HeaderWidget.selectedIndex.value = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 20, 26, 20),
      height: 235,
      decoration: BoxDecoration(
        color: Utils.white,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'AETA',
            style: GoogleFonts.poppins(
              color: Utils.dark_primary,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                width: 85,
                height: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Utils.backgroundColor,
                ),
                child: Center(
                  child: Text('FOTO'),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name!,
                    style: GoogleFonts.poppins(
                      color: Utils.dark_primary,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    widget.role!,
                    style: GoogleFonts.poppins(
                      color: Utils.gray100,
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Utils.primary,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    topRight: Radius.circular(5),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Stack(
                  children: [
                    Center(
                        child: Icon(
                      CustomIcons.notification_fill,
                      color: Utils.white,
                    )),
                    Positioned(
                      right: 10,
                      top: 5,
                      child: Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          color: Utils.dark_primary,
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            '5',
                            style: GoogleFonts.poppins(
                              color: Utils.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Spacer(),
          Row(
            children: [
              Container(
                height: 34,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: widget.buttonTextList!.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.only(right: 27),
                    child: _button(
                        text: widget.buttonTextList![index], index: index),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _button({required String text, required int index}) {
    Color colorText = Utils.gray100;

    if (HeaderWidget.selectedIndex.value == index) {
      colorText = Utils.primary;
    }
    return InkWell(
      onTap: () => setState(() {
        HeaderWidget.selectedIndex.value = index;
      }),
      child: Column(
        children: [
          Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: colorText,
            ),
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: colorText,
            ),
          )
        ],
      ),
    );
  }
}

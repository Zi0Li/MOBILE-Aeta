import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 0,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(0);
}

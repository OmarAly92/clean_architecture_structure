import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key, this.title}) : super(key: key);

  final Widget? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title ?? const Text('Welcome'),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}

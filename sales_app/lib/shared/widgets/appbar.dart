import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Actions? actions;
  final Widget? leading;
  const MyAppBar({
    super.key,
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 5,
      shadowColor: const Color.fromARGB(110, 0, 0, 0),
      title: Text(
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        title,
      ),
      actions: actions != null ? [actions!] : [],
      leading: leading,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(45);
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool hasIcon;
  final bool hasSeconIcon;
  final String? icon;
  final String? secondIcon;
  final Widget? iconData;
  final Widget? secondIconData;
  final VoidCallback? onPressedIcon;
  final VoidCallback? onPressedSecondIcon;

  const AppBarWidget({
    super.key,
    required this.title,
    this.hasIcon = false,
    this.hasSeconIcon = false,
    this.icon,
    this.secondIcon,
    this.iconData,
    this.secondIconData,
    this.onPressedIcon,
    this.onPressedSecondIcon,
  });

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 0,
        backgroundColor: Colors.redAccent,
        title: Text(
          title,
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: hasIcon
            ? IconButton(icon: iconData!, onPressed: onPressedIcon)
            : null,
        actions: hasSeconIcon
            ? [
                IconButton(
                  icon: secondIconData!,
                  onPressed: onPressedSecondIcon,
                )
              ]
            : null,
      ),
    );
  }
}

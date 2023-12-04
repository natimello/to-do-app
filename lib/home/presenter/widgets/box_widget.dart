import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxWidget extends StatelessWidget {
  final String? title;

  const BoxWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      height: 82,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            offset: const Offset(0, 2),
            blurRadius: 5,
            spreadRadius: -1,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                title!,
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: SvgPicture.asset('assets/icons/Pencil.svg',
                      colorFilter: const ColorFilter.mode(
                          Colors.redAccent, BlendMode.srcIn)),
                  onPressed: () {}),
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: SvgPicture.asset('assets/icons/Trash.svg',
                      colorFilter: const ColorFilter.mode(
                          Colors.redAccent, BlendMode.srcIn)),
                  onPressed: () {}),
              IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: SvgPicture.asset('assets/icons/CheckCircle.svg',
                      colorFilter: const ColorFilter.mode(
                          Colors.redAccent, BlendMode.srcIn)),
                  onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}

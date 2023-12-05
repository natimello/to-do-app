import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormWidget  extends StatelessWidget {
  FormWidget({super.key});

  late FocusNode _focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLength: 50,
          cursorColor: Colors.redAccent,
          decoration: InputDecoration(
            hintText: 'Title',
            hintStyle: GoogleFonts.poppins(color: Colors.grey),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.redAccent), // Cor da borda quando o campo está em foco
            ),
            
          ),
        ),
        TextFormField(
            maxLength: 300,
            maxLines: 7,
            cursorColor: Colors.redAccent,
            decoration: InputDecoration(
              hintText: 'Details',
              hintStyle: GoogleFonts.poppins(color: Colors.grey),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent), // Cor da borda quando o campo está em foco
              )
            ),
          ),
        
      ],
    );
  }
}
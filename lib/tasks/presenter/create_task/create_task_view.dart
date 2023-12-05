import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/widgets/app_bar.dart';
import 'package:to_do_app/widgets/form.dart';

class CreateTaskView extends StatelessWidget {
  const CreateTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(title: 'Create new task'),
      body: Padding(padding: const EdgeInsets.all(24), child: FormWidget(),),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(24),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
            padding: const EdgeInsets.symmetric(vertical: 10),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
          onPressed: () {},
          child: Text(
            'Create',
            style:
                GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

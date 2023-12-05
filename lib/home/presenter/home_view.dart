import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/home/presenter/widgets/box_widget.dart';
import 'package:to_do_app/tasks/presenter/create_task/create_task_view.dart';
import 'package:to_do_app/widgets/app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBarWidget(
          title: 'ToDo App'.toUpperCase(),
          hasSeconIcon: true,
          secondIconData: SvgPicture.asset(
            'assets/icons/ToDo.svg',
            height: 34,
            width: 34,
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
          )),
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: const BoxWidget(title: 'Primeiro lembrete'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.redAccent,
        elevation: 4,
        highlightElevation: 12,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Container(
        height: 80,
        decoration: const BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return Colors.transparent;
                  },
                )),
                onPressed: () {},
                child: Text('All',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )),
              ),
            ),
            Expanded(
              child: TextButton(
                style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    return Colors.transparent;
                  },
                )),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateTaskView()),
                  );
                },
                child: Text('Completed',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

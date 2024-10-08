import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0.7),
        elevation: 0,
        centerTitle: true,
        title: Text('Kasvihuone', style: GoogleFonts.pacifico(fontSize: 50)),
        toolbarHeight: 120,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/background.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Positioned(
            top: kToolbarHeight + 150,
            left: 0,
            right: 0,
            child: Center(
              child: Text(
                'Historia',
                style: TextStyle(fontSize: 36),
              ),
            ),
          ),
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Lämpötila', style: TextStyle(fontSize: 24)),
                SizedBox(height: 8),
                Text('Kosteus', style: TextStyle(fontSize: 24)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

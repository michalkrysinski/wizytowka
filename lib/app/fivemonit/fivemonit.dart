import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/newmonit/newmonit.dart';
import 'package:portfolio/app/tumonit/tumonit.dart';

// ignore: camel_case_types
class fivemonit extends StatelessWidget {
  const fivemonit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Zainteresowania'), backgroundColor: Colors.indigo),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/fotoi.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/zainteresowania.png'),
                radius: 100,
              ),
              const SizedBox(height: 40),
              Text(
                'Do moich zainteresowań należy między innymi',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'motoryzacja, sport, biznes, gotowanie, programowanie,',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'muzyka, podróżowanie, technologia oraz wiele innych.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(height: 30),
              Text(
                'Czasami lubię też pograć w jakieś gry.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Wiedźmin 3 jest jedną z moich ulubionych gier.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(height: 30),
              Text(
                'Kalistenika jest czymś co towarzyszy mi od',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'kilku ładnych lat.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text('Wróć'),
                style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const tumonit(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Wróć na ekran główny'),
                style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const newmonit(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

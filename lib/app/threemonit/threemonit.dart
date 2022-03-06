import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/newmonit/newmonit.dart';
import 'package:portfolio/app/tumonit/tumonit.dart';

// ignore: camel_case_types
class threemonit extends StatelessWidget {
  const threemonit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('O mnie'), backgroundColor: Colors.indigo),
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
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/graf3.jpg'),
                radius: 110,
              ),
              const SizedBox(height: 50),
              Text(
                'Nazywam się Michał Krysiński, mam 21 lat.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Aktualnie mieszkam w Warszawie.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Mieszkam tutaj, uczę się oraz pracuję.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Mój dom rodzinny znajduje się na ziemi Lubuskiej.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Podróżuję dość często.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Co sprawia, że bardzo chcę podjąć się pracy zdalnej.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Od pewnego czasu interesuję się technologią Flutter.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'Flutter jest tym, w czym chcę się rozwijać',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              Text(
                'i chcę być jednym z najlepszych Flutter developerów.',
                style: GoogleFonts.lato(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(height: 20),
              Text(
                'Jestem bardzo zmotywowany',
                style: GoogleFonts.coveredByYourGrace(
                    fontSize: 20, color: Colors.black),
              ),
              Text(
                'aby dostać pierwszą pracę jako Flutter developer',
                style: GoogleFonts.lato(fontSize: 16, color: Colors.black),
              ),
              Text(
                'i stale się rozwijać.',
                style: GoogleFonts.lato(fontSize: 16, color: Colors.black),
              ),
              const SizedBox(height: 35),
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

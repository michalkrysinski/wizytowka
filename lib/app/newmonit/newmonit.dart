import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/tumonit/tumonit.dart';

// ignore: camel_case_types
class newmonit extends StatelessWidget {
  const newmonit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                backgroundImage: AssetImage('images/graf1.jpg'),
                radius: 150,
              ),
              const SizedBox(height: 25),
              Text(
                'Michał Krysiński',
                style: GoogleFonts.openSans(fontSize: 25, color: Colors.black),
              ),
              const SizedBox(height: 65),
              const CircleAvatar(
                backgroundImage: AssetImage('images/poczta.png'),
                radius: 20,
              ),
              const SizedBox(height: 10),
              Text(
                'michalkrysinski8@gmail.com',
                style: GoogleFonts.openSans(fontSize: 15, color: Colors.black),
              ),
              const SizedBox(height: 55),
              ElevatedButton(
                child: const Text('Przejdź dalej'),
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const tumonit(),
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/newmonit/newmonit.dart';
import 'package:portfolio/app/sevenmonit/sevenmonit.dart';
import 'package:portfolio/app/tumonit/tumonit.dart';

// ignore: camel_case_types
class sixmonit extends StatelessWidget {
  const sixmonit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('TAK albo NIE'), backgroundColor: Colors.indigo),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/graf7.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage('images/taknie.jpg'),
                radius: 80,
              ),
              const SizedBox(height: 40),
              Text(
                'Zadajesz drugiej osobie pytanie,',
                style: GoogleFonts.lato(fontSize: 19, color: Colors.black),
              ),
              Text(
                'ona natomiast musi poprawnie odpowiedzieć.',
                style: GoogleFonts.lato(fontSize: 19, color: Colors.black),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                child: const Text('DOWIEDZ SIĘ CZY JEST TO POPRAWNA ODPOWIEDŹ'),
                style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const sevenmonit(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 140),
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

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/newmonit/newmonit.dart';
import 'package:portfolio/app/sixmonit/sixmonit.dart';

// ignore: camel_case_types
class sevenmonit extends StatelessWidget {
  const sevenmonit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final result = random.nextBool();

    return Scaffold(
      appBar: AppBar(title: const Text(''), backgroundColor: Colors.indigo),
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
              const SizedBox(height: 200),
              if (result == true)
                Text(
                  'TAK',
                  style: GoogleFonts.lato(fontSize: 90),
                ),
              if (result == false)
                Text(
                  'NIE',
                  style: GoogleFonts.lato(fontSize: 90),
                ),
              const SizedBox(height: 200),
              ElevatedButton(
                child: const Text('Wróć'),
                style: ElevatedButton.styleFrom(
                  primary: result == true ? Colors.green : Colors.red,
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const sixmonit(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Wróć na ekran główny'),
                style: ElevatedButton.styleFrom(
                  primary: result == true ? Colors.green : Colors.red,
                ),
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

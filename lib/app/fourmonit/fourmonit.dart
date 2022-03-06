import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app/newmonit/newmonit.dart';
import 'package:portfolio/app/tumonit/tumonit.dart';

// ignore: camel_case_types
class fourmonit extends StatelessWidget {
  const fourmonit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Social media'), backgroundColor: Colors.indigo),
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
                backgroundImage: AssetImage('images/socialmedia.jpg'),
                radius: 100,
              ),
              const SizedBox(height: 35),
              Text('Facebook',
                  style: GoogleFonts.coveredByYourGrace(
                      fontSize: 55, color: Colors.black)),
              IconButton(
                onPressed: () {
                  ('https://www.facebook.com/profile.php?id=100013307717855');
                },
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.facebook),
                  ],
                ),
                color: Colors.black,
              ),
              Text(
                'Instagram',
                style: GoogleFonts.coveredByYourGrace(
                    fontSize: 55, color: Colors.black),
              ),
              IconButton(
                onPressed: () {
                  ('https://www.instagram.com/michal__krs/');
                },
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Icon(Icons.camera_alt),
                  ],
                ),
              ),
              const SizedBox(height: 60),
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

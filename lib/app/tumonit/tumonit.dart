import 'package:flutter/material.dart';
import 'package:portfolio/app/fivemonit/fivemonit.dart';
import 'package:portfolio/app/fourmonit/fourmonit.dart';
import 'package:portfolio/app/newmonit/newmonit.dart';
import 'package:portfolio/app/sixmonit/sixmonit.dart';
import 'package:portfolio/app/threemonit/threemonit.dart';

// ignore: camel_case_types
class tumonit extends StatelessWidget {
  const tumonit({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          AppBar(title: const Text('Profil'), backgroundColor: Colors.indigo),
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
              const SizedBox(height: 50),
              const CircleAvatar(
                backgroundImage: AssetImage('images/fotoy.jpg'),
                radius: 120,
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                child: const Text('O mnie'),
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const threemonit(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Social media'),
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const fourmonit(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('Zainteresowania'),
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const fivemonit(),
                    ),
                  );
                },
              ),
              ElevatedButton(
                child: const Text('TAK albo NIE'),
                style: ElevatedButton.styleFrom(primary: Colors.indigo),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const sixmonit(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 80),
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

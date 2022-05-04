import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Mate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CupertinoButton.filled(
                    child: const Text("clasa a 5-a"),
                    disabledColor: const Color.fromARGB(255, 77, 148, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SixthRoute()),
                      );
                    },
                    //mainAxisAlignment: MainAxisAlignment.center,
                  ),
                  CupertinoButton.filled(
                    child: const Text("clasa a 6-a"),
                    disabledColor: const Color.fromARGB(255, 77, 148, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SeventhRoute()),
                      );
                    },
                  ),
                  CupertinoButton.filled(
                    child: const Text("clasa a 7-a"),
                    disabledColor: const Color.fromARGB(255, 77, 148, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const EightRoute()),
                      );
                    },
                  ),
                  CupertinoButton.filled(
                    child: const Text("clasa a 8-a"),
                    disabledColor: const Color.fromARGB(255, 77, 148, 255),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NinthRoute()),
                      );
                    },
                  )
                ])));
  }
}

class SixthRoute extends StatelessWidget {
  const SixthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matematica: Clasa a 5-a'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class SeventhRoute extends StatelessWidget {
  const SeventhRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matematica: clasa a 6-a'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class EightRoute extends StatelessWidget {
  const EightRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matematica: clasa a 7-a'),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CupertinoButton(
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        "Rădăcina pătrată a pătratului unui număr rațional")),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Radicali()),
                  );
                },
              )
            ],
          )),
    );
  }
}

class NinthRoute extends StatelessWidget {
  const NinthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matematica: clasa a 8-a'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}

class Radicali extends StatelessWidget {
  const Radicali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Idei principale si secundare'),
        ),
        body: ListView(children: [
          Image.asset('assets/images/RADICALI1.jpg'),
          Image.asset('assets/images/RADICALI2.jpg')
        ]));
  }
}

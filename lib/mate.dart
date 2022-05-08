import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Mate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Matematica",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
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
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              CupertinoButton(
                child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Fractii ordinare")),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FractiiOrdinare()),
                  );
                },
              ),
            ],
          ),
        ));
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
        child: SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Multimea numerelor intregi")),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MultimeaIntregi()),
                    );
                  },
                )
              ],
            )),
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
        child: SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Align(
                      alignment: Alignment.centerLeft, child: Text("Functii")),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Functii()),
                    );
                  },
                )
              ],
            )),
      ),
    );
  }
}

class FractiiOrdinare extends StatelessWidget {
  const FractiiOrdinare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fractii ordinare'),
        ),
        body: ListView(children: [
          Container(
            height: 5,
          ),
          const Text(
            "Fractii ordinare",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/fractii1.jpg'),
          Container(height: 20),
          const Text(
            "Fractii echivalente",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/fractii2.jpg'),
          Container(height: 20),
          const Text(
            "Procente",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/fractii3.jpg'),
          Container(height: 20),
          const Text(
            "Introducerea intregilor in fractie",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/fractii4.jpg'),
        ]));
  }
}

class MultimeaIntregi extends StatelessWidget {
  const MultimeaIntregi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Multimea numerelor intregi'),
        ),
        body: ListView(children: [
          Container(
            height: 5,
          ),
          const Text(
            "Multimea numerelor intregi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/intregi1.jpg'),
          Container(height: 20),
          const Text(
            "Axa numerelor",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/intregi2.jpg'),
          Container(height: 20),
          const Text(
            "Numere intregi opuse",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/intregi3.jpg'),
          Container(height: 20),
          const Text(
            "Compararea numerelor intregi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/intregi4.jpg'),
        ]));
  }
}

class Radicali extends StatelessWidget {
  const Radicali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Radacina patrata'),
        ),
        body: ListView(children: [
          Container(
            height: 5,
          ),
          const Text(
            "Radacina patrata",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/radicali1.jpg'),
          Container(height: 20),
          const Text(
            "Axa numerelor",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/radicali2.jpg'),
          Container(height: 20),
          const Text(
            "Numere intregi opuse",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/radicali3.jpg'),
          Container(height: 20),
          const Text(
            "Compararea numerelor intregi",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/radicali4.jpg'),
        ]));
  }
}

class Functii extends StatelessWidget {
  const Functii({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Functii'),
        ),
        body: ListView(children: [
          Container(
            height: 5,
          ),
          const Text(
            "Functii",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/functii1.jpg'),
          Container(height: 20),
          const Text(
            "Functii egale",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/functii2.jpg'),
          Container(height: 20),
          const Text(
            "Multimea valorilor unei functii",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Container(
            height: 5,
          ),
          Image.asset('assets/images/functii3.jpg'),
        ]));
  }
}

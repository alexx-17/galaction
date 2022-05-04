import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Romana extends StatelessWidget {
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
                            builder: (context) => const SecondRoute()),
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
                            builder: (context) => const ThirdRoute()),
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
                            builder: (context) => const FourthRoute()),
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
                            builder: (context) => const FifthRoute()),
                      );
                    },
                  )
                ])));
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Limba Romana: Clasa a 5-a'),
        ),
        body: SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Idei principale si secundare")),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IdeiPrincipale()),
                    );
                  },
                ),
              ],
            )));
  }
}

class ThirdRoute extends StatelessWidget {
  const ThirdRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Limba Romana: clasa a 6-a'),
        ),
        body: SizedBox(
            width: double.infinity,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Substantiv")),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Substantiv()),
                    );
                  },
                ),
              ],
            )));
  }
}

class FourthRoute extends StatelessWidget {
  const FourthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Limba Romana: clasa a 7-a'),
      ),
      body: Center(
        child:Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Adjectiv")),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Adjectiv()),
                    );
                  },
                ),
              ],
            ))); 
  }
}

class FifthRoute extends StatelessWidget {
  const FifthRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Limba Romana: clasa a 8-a'),
      ),
      body: Center(
        child: Column(
              //mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CupertinoButton(
                  child: const Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Derivarea")),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Derivare()),
                    );
                  },
                ),
              ],
            ))); 
  }
}

class IdeiPrincipale extends StatelessWidget {
  const IdeiPrincipale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Idei principale si secundare'),
        ),
        body: ListView(children: [
          const Align(
              child: Text("Citeşte acest fragment de text:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "A fost ce-a fost; dacă n-ar fi fost, nici nu s-ar povesti. A fost odată un împărat. Împăratul acesta stăpânea o lume întreagă, şi în lumea aceasta era un păcurar bătrân şi o păcurăriţă care aveau trei fete : Ana, Stana şi Lăptiţa. Ana, cea mai în vârstă dintre surori, era frumoasă, încât oile încetau a paşte când o zăreau în mijlocul lor. Stana, cea mijlocie, era frumoasă, încât lupii păzeau turma când o vedeau pe dânsa stăpână; iară Lăptiţa, cea mai tânără soră, albă caspuma laptelui şi cu păr moale ca lâna mieluşeilor, era frumoasă - mai frumoasă decât surorile sale împreună - frumoasă cum numai dânsa era. ",
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset('assets/images/ideiprincipale.jpg'),
          const SizedBox(height: 20),
          const Align(
            child: Text("Formularea ideii principale",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 10),
          const Align(
              child: Text("Citirea textului",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Se citeşte textul cu atenţie de câteva ori!"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Întrebări suport:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text(
                  "Care este subiectul fragmentului de text? Despre ce este vorba în acest fragment de text?"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "În acest fragment de text este vorba despre familia unui cioban.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Ideea principală",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Întrebare suport: Care este informația cea mai importantă despre familia ciobanului?"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Un cioban are trei fete frumoase.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 20),
          const Align(
            child: Text("Formularea ideii secundare",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 10),
          const Align(
              child: Text(
                  "Întrebare suport: Care sunt informațiile relevante despre cele trei fete ale ciobanului?"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Fiecare dintre cele trei fete este foarte frumoasă.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 10),
          const Align(
              child: Text(
                  "Întrebare suport: Câte idei secundare detaliază ideea secundară?"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Trei idei secundare referitoare la frumuseţea celor trei surori detaliază ideea principală.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 15),
          const Align(
              child: Text(
                  "Ideea secundară 1: Oile nu mai pasc când o văd pe Ana în mijlocul lor.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Idee secundară 2: Lupii păzesc turma de oi când Stana este stăpână.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Idee secundară 3: Lăptiţa, cea mai tânără dintre surori, este cea mai frumoasă.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          Image.asset('assets/images/ideisecundare.jpg')
        ]));
  }
}

class Substantiv extends StatelessWidget {
  const Substantiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Substantivul'),
        ),
        body: ListView(children: [
          const Align(
              child: Text(
                  "Substantivul = partea de vorbire flexibilă care definește:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Text("-ființe"),
          const Text("-obiecte"),
          const Text("-fenomene ale naturii"),
          const Text("-sentimente"),
          const SizedBox(height: 10),
          const Align(
              child: Text("Proprietățile substantivului",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          Align(
              child: Image.asset('assets/images/felsubst.jpg'),
              alignment: Alignment.centerLeft),
          Align(
              child: Image.asset('assets/images/nrsubst.jpg'),
              alignment: Alignment.center),
          Align(
              child: Image.asset('assets/images/gensubst.jpg'),
              alignment: Alignment.center),
          const SizedBox(height: 20),
          const Align(
              child: Text("Cazurile substantivului",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Cazul Nominativ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Subiect - cel despre care este vorba în propoziție",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Copilul merge pe trotuar"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Nume Predicativ - stă pe lângă un verb copulativ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Elevul este prietenul meu"),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 10),
          const Align(
              child: Text("Cazul Acuzativ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Cazul Acuzativ poate fi recunoscut după prepozițiile de acuzativ"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Prepoziții simple de acuzativ: cu, de, din, dintre, după, fără, în, la, lângă, pe, pentru, peste, până, către, spre, sub"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Prepoziții compuse de acuzativ: de la, de lângă, de pe, de peste, de prin, de sub, pe după, pe la, pe lângă, pe sub, de pe la, de pe lângă, de pe sub, de către, fără de, până pe la, etc."),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Funcțiile sintactice",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Complement:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("- Direct (ce? pe cine?): Elevul citește O CARTE"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "- Prepozițional (cu/de/din/dintre/după/fără/în/la/lângă/pe/pentru/peste ce?): Era reticent față de proiect"),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Atribut Substantival(care?/ce fel de?):",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Am o rochie de mătase"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Sfat: Complementele pot fi găsite mereu pe lângă un verb, iar atributele, pe lângă un substantiv",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 10),
          const Align(
              child: Text("Cazul Dativ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Funcțiile sintactice",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text(
                  "Complement Indirect: I-am spus adevărul prietenei mele."),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Sfat: Complementul Indirect stă pe lângă un verb, dar se diferențiază de cel din acuzativ prin faptul că răspunde la întrebarea „cui?”",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 10),
          const Align(
              child: Text("Cazul Genitiv",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Funcțiile sintactice",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Atribut substantival genitival(a/al/ai/ale cui?)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Bicicleta băiatului este nouă."),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Atributul substantival genitival poate fi precedat de articolul genitival"),
              alignment: Alignment.centerLeft),
          Image.asset('assets/images/artg.jpg'),
          const SizedBox(height: 10),
          const Align(
              child: Text("Cazul Vocativ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Nu are funcție sintactică"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Arată o chemare, o strigare"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Substantivele în cazul vocativ sunt izolate de restul propoziției prin virgulă"),
              alignment: Alignment.centerLeft),
          Image.asset('assets/images/vocativ.jpg')
        ]));
  }
}

class Adjectiv extends StatelessWidget {
  const Adjectiv({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Adjectivul'),
        ),
        body: ListView(children: [
          const Align(
            child: Text("Adjectivul"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text(
                "Adjectivul = partea de vorbire flexibilă ce definește un substantiv"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5),
          const Align(
            child: Text("Poate fi:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("După proveniență:", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- propriu-zis: bun, rău"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- provenit din verb la participiu: carte citită"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- provenit din verb la gerunziu: salcie plângândă"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5,),
          const Align(
            child: Text("După alcătuire", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- simple: bun, rău"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- compuse: cuminte, roșu-închis"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5,),
          const Align(
            child: Text("După variabilitate", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- invariabile: turcoaz, siclam, ocru, ecru, ecosez, lila, crem, perspicace"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- variabile cu 4 forme flexionare (2 terminații): frumos/frumoasă/frumoși/frumoase"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- variabile cu 3 forme flexionare (2 terminații): mic, roșu + adjective terminate în:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("„-tor”: strălucitor"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text("„-esc”: românesc"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text("„-iu”: auriu"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text("- 2 forme flexionare (2 terminații): vechi/veche, bălai/bălaie"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- 2 forme flexionare (1 terminație): mare/mari,"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 10),
          const Align(
            child: Text("Gradele de comparație ale adjectivului", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- pozitiv: cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- comparativ:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   de egalitate: la fel de/tot așa de/tot atât de: la fel de cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   de inegalitate: "),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("       de superioritate: mai cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("       de inferioritate: mai puțin cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- superlativ"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   relativ:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("       de superioritate: cel/cea/cei/cele (articol demonstrativ adjectival) mai + adj: cel mai cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("       de inferioritate: cel/cea/cei/cele (articol demonstrativ adjectival) mai puțin+ adj: cel mai puțin cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   absolut:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("       de superioritate: foarte/tare/prea + adj: foarte cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("       de inferioritate: foarte/tare/prea puțin + adj: foarte puțin cuminte"),
            alignment: Alignment.centerLeft,
          ),
        ]));
  }
}

class Derivare extends StatelessWidget{
  const Derivare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Adjectivul'),
        ),
        body: ListView(children: [
          const Align(
            child: Text("Derivarea"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text(
                "Derivarea = este mijlocul intern de îmbogățire a vocabularului, prin care se formează cuvinte noi prin adăugarea de sufixe sau prefixe unei rădăcini", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5),
          const Align(
            child: Text("Cuvântul de bază = elementul fundamental pentru cuvinte noi, iar rădăcina este alcătuită din sunetele comune cuvântului de bază și tuturor cuvintelor obținute de la acesta. Uneori acestea coincid (prieten, prietenie), dar cel mai adesea între cuvântul de bază și rădăcină există diferențe ( fată, fetiță).", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("Sufixele = sunetele sau grupurile de sunete adăugate după rădăcină pentru a forma cuvinte noi. Ele pot fi:", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   - lexicale, când creează cuvinte noi; de exemplu: ardelean, aurar, argintiu, bucătărie, cărțoi, degetar, dorință, pantofior, prietenește, zmeuriș;"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   - gramaticale, când creează forme gramaticale; de exemplu, sufixe de timp (-se pentru mai-mult-ca-perfect, cântasem), sufixul de infinitiv (-a din a cânta) etc.;"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   - lexico-gramaticale, când exprimă, simultan, un sens nou și o categorie gramaticală (de exemplu, lucrare, verb la infinitivul lung lucrat, participiu."),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5,),
          const Align(
            child: Text("Sufixele pot forma substantive (tinerime), verbe (pietrui), adjective (argintiu), adverbe (târâș), pronume (mătălică) sau interjecții (aolică)."),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("Prefixele = Prefixele sunt sunetele sau grupurile de sunete adăugate înaintea rădăcinii, pentru a forma cuvinte noi; de exemplu: neșansă, ineficient, descumpăni, dezordine, deparazita, răsciti, reaminti.", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("Prefixele pot forma substantive (necredință), verbe (a înmulți, a reaminti), adjective (străvechi), adverbe (negreșit)."),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5,),
          const Align(
            child: Text("Derivatele parasintetice sunt formate în același timp cu un sufix și cu un prefix (a închipui).", style: TextStyle(fontWeight: FontWeight.bold),),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("Seriile derivative se formează atunci când baza unui cuvânt derivat este un alt cuvânt derivat (țară + sufixul de origine -an → țăran + sufixul moțional -că → țărancă + sufixul diminutival -uță → țărăncuță)."),
            alignment: Alignment.centerLeft,
          ),
          Image.asset('assets/images/serii.jpg')
        ]));
  }
}
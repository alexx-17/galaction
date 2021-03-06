import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Romana extends StatelessWidget {
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
                    "Limba Romana",
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
                      child: Text("Substantivul")),
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
            child: Column(
          //mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CupertinoButton(
              child: const Align(
                  alignment: Alignment.centerLeft, child: Text("Adjectivul")),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Adjectiv()),
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
                  alignment: Alignment.centerLeft, child: Text("Derivarea")),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Derivare()),
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
              child: Text("Cite??te acest fragment de text:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "A fost ce-a fost; dac?? n-ar fi fost, nici nu s-ar povesti. A fost odat?? un ??mp??rat. ??mp??ratul acesta st??p??nea o lume ??ntreag??, ??i ??n lumea aceasta era un p??curar b??tr??n ??i o p??cur??ri???? care aveau trei fete : Ana, Stana ??i L??pti??a. Ana, cea mai ??n v??rst?? dintre surori, era frumoas??, ??nc??t oile ??ncetau a pa??te c??nd o z??reau ??n mijlocul lor. Stana, cea mijlocie, era frumoas??, ??nc??t lupii p??zeau turma c??nd o vedeau pe d??nsa st??p??n??; iar?? L??pti??a, cea mai t??n??r?? sor??, alb?? caspuma laptelui ??i cu p??r moale ca l??na mielu??eilor, era frumoas?? - mai frumoas?? dec??t surorile sale ??mpreun?? - frumoas?? cum numai d??nsa era. ",
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
              child: Text("Se cite??te textul cu aten??ie de c??teva ori!"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("??ntreb??ri suport:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text(
                  "Care este subiectul fragmentului de text? Despre ce este vorba ??n acest fragment de text?"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "??n acest fragment de text este vorba despre familia unui cioban.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Ideea principal??",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "??ntrebare suport: Care este informa??ia cea mai important?? despre familia ciobanului?"),
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
                  "??ntrebare suport: Care sunt informa??iile relevante despre cele trei fete ale ciobanului?"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Fiecare dintre cele trei fete este foarte frumoas??.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 10),
          const Align(
              child: Text(
                  "??ntrebare suport: C??te idei secundare detaliaz?? ideea secundar???"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Trei idei secundare referitoare la frumuse??ea celor trei surori detaliaz?? ideea principal??.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 15),
          const Align(
              child: Text(
                  "Ideea secundar?? 1: Oile nu mai pasc c??nd o v??d pe Ana ??n mijlocul lor.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Idee secundar?? 2: Lupii p??zesc turma de oi c??nd Stana este st??p??n??.",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Idee secundar?? 3: L??pti??a, cea mai t??n??r?? dintre surori, este cea mai frumoas??.",
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
                  "Substantivul = partea de vorbire flexibil?? care define??te:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Text("-fiin??e"),
          const Text("-obiecte"),
          const Text("-fenomene ale naturii"),
          const Text("-sentimente"),
          const SizedBox(height: 10),
          const Align(
              child: Text("Propriet????ile substantivului",
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
              child: Text("Subiect - cel despre care este vorba ??n propozi??ie",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Copilul merge pe trotuar"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Nume Predicativ - st?? pe l??ng?? un verb copulativ",
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
                  "Cazul Acuzativ poate fi recunoscut dup?? prepozi??iile de acuzativ"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Prepozi??ii simple de acuzativ: cu, de, din, dintre, dup??, f??r??, ??n, la, l??ng??, pe, pentru, peste, p??n??, c??tre, spre, sub"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Prepozi??ii compuse de acuzativ: de la, de l??ng??, de pe, de peste, de prin, de sub, pe dup??, pe la, pe l??ng??, pe sub, de pe la, de pe l??ng??, de pe sub, de c??tre, f??r?? de, p??n?? pe la, etc."),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Func??iile sintactice",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Complement:",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("- Direct (ce? pe cine?): Elevul cite??te O CARTE"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "- Prepozi??ional (cu/de/din/dintre/dup??/f??r??/??n/la/l??ng??/pe/pentru/peste ce?): Era reticent fa???? de proiect"),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Atribut Substantival(care?/ce fel de?):",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Am o rochie de m??tase"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Sfat: Complementele pot fi g??site mereu pe l??ng?? un verb, iar atributele, pe l??ng?? un substantiv",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 10),
          const Align(
              child: Text("Cazul Dativ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Func??iile sintactice",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text(
                  "Complement Indirect: I-am spus adev??rul prietenei mele."),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Sfat: Complementul Indirect st?? pe l??ng?? un verb, dar se diferen??iaz?? de cel din acuzativ prin faptul c?? r??spunde la ??ntrebarea ???cui????",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 10),
          const Align(
              child: Text("Cazul Genitiv",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Func??iile sintactice",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const SizedBox(height: 5),
          const Align(
              child: Text("Atribut substantival genitival(a/al/ai/ale cui?)",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Bicicleta b??iatului este nou??."),
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
              child: Text("Nu are func??ie sintactic??"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text("Arat?? o chemare, o strigare"),
              alignment: Alignment.centerLeft),
          const Align(
              child: Text(
                  "Substantivele ??n cazul vocativ sunt izolate de restul propozi??iei prin virgul??"),
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
                "Adjectivul = partea de vorbire flexibil?? ce define??te un substantiv"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5),
          const Align(
            child: Text("Poate fi:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
              "Dup?? provenien????:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- propriu-zis: bun, r??u"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- provenit din verb la participiu: carte citit??"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- provenit din verb la gerunziu: salcie pl??ng??nd??"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            child: Text(
              "Dup?? alc??tuire",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- simple: bun, r??u"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- compuse: cuminte, ro??u-??nchis"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            child: Text(
              "Dup?? variabilitate",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "- invariabile: turcoaz, siclam, ocru, ecru, ecosez, lila, crem, perspicace"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "- variabile cu 4 forme flexionare (2 termina??ii): frumos/frumoas??/frumo??i/frumoase"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "- variabile cu 3 forme flexionare (2 termina??ii): mic, ro??u + adjective terminate ??n:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("???-tor???: str??lucitor"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text("???-esc???: rom??nesc"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text("???-iu???: auriu"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text(
                "- 2 forme flexionare (2 termina??ii): vechi/veche, b??lai/b??laie"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("- 2 forme flexionare (1 termina??ie): mare/mari,"),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 10),
          const Align(
            child: Text(
              "Gradele de compara??ie ale adjectivului",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
            child: Text(
                "   de egalitate: la fel de/tot a??a de/tot at??t de: la fel de cuminte"),
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
            child: Text("       de inferioritate: mai pu??in cuminte"),
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
            child: Text(
                "       de superioritate: cel/cea/cei/cele (articol demonstrativ adjectival) mai + adj: cel mai cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "       de inferioritate: cel/cea/cei/cele (articol demonstrativ adjectival) mai pu??in+ adj: cel mai pu??in cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text("   absolut:"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "       de superioritate: foarte/tare/prea + adj: foarte cuminte"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "       de inferioritate: foarte/tare/prea pu??in + adj: foarte pu??in cuminte"),
            alignment: Alignment.centerLeft,
          ),
        ]));
  }
}

class Derivare extends StatelessWidget {
  const Derivare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Derivarea'),
        ),
        body: ListView(children: [
          const Align(
            child: Text("Derivarea"),
            alignment: Alignment.center,
          ),
          const Align(
            child: Text(
              "Derivarea = este mijlocul intern de ??mbog????ire a vocabularului, prin care se formeaz?? cuvinte noi prin ad??ugarea de sufixe sau prefixe unei r??d??cini",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(height: 5),
          const Align(
            child: Text(
              "Cuv??ntul de baz?? = elementul fundamental pentru cuvinte noi, iar r??d??cina este alc??tuit?? din sunetele comune cuv??ntului de baz?? ??i tuturor cuvintelor ob??inute de la acesta. Uneori acestea coincid (prieten, prietenie), dar cel mai adesea ??ntre cuv??ntul de baz?? ??i r??d??cin?? exist?? diferen??e ( fat??, feti????).",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
              "Sufixele = sunetele sau grupurile de sunete ad??ugate dup?? r??d??cin?? pentru a forma cuvinte noi. Ele pot fi:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "   - lexicale, c??nd creeaz?? cuvinte noi; de exemplu: ardelean, aurar, argintiu, buc??t??rie, c??r??oi, degetar, dorin????, pantofior, prietene??te, zmeuri??;"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "   - gramaticale, c??nd creeaz?? forme gramaticale; de exemplu, sufixe de timp (-se pentru mai-mult-ca-perfect, c??ntasem), sufixul de infinitiv (-a din a c??nta) etc.;"),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "   - lexico-gramaticale, c??nd exprim??, simultan, un sens nou ??i o categorie gramatical?? (de exemplu, lucrare, verb la infinitivul lung lucrat, participiu."),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            child: Text(
                "Sufixele pot forma substantive (tinerime), verbe (pietrui), adjective (argintiu), adverbe (t??r????), pronume (m??t??lic??) sau interjec??ii (aolic??)."),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
              "Prefixele = Prefixele sunt sunetele sau grupurile de sunete ad??ugate ??naintea r??d??cinii, pentru a forma cuvinte noi; de exemplu: ne??ans??, ineficient, descump??ni, dezordine, deparazita, r??sciti, reaminti.",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "Prefixele pot forma substantive (necredin????), verbe (a ??nmul??i, a reaminti), adjective (str??vechi), adverbe (negre??it)."),
            alignment: Alignment.centerLeft,
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
            child: Text(
              "Derivatele parasintetice sunt formate ??n acela??i timp cu un sufix ??i cu un prefix (a ??nchipui).",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            alignment: Alignment.centerLeft,
          ),
          const Align(
            child: Text(
                "Seriile derivative se formeaz?? atunci c??nd baza unui cuv??nt derivat este un alt cuv??nt derivat (??ar?? + sufixul de origine -an ??? ????ran + sufixul mo??ional -c?? ??? ????ranc?? + sufixul diminutival -u???? ??? ????r??ncu????)."),
            alignment: Alignment.centerLeft,
          ),
          Image.asset('assets/images/serii.jpg')
        ]));
  }
}

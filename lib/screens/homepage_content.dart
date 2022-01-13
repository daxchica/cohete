import 'package:auto_size_text/auto_size_text.dart';
import 'package:cohete/screens/news_screen.dart';
import 'package:flutter/material.dart';

import 'inctax_screen.dart';
import 'salestax_screen.dart';

class HomePageContent extends StatefulWidget {
  const HomePageContent({Key? key}) : super(key: key);

  @override
  _HomePageContentState createState() => _HomePageContentState();
}

class _HomePageContentState extends State<HomePageContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Card(
              // margin: const EdgeInsets.fromLTRB(15, 25, 15, 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 0,
              color: Colors.white70,
              child: const Padding(
                padding: EdgeInsets.fromLTRB(45, 15, 45, 15),
                child: Center(
                  child: AutoSizeText(
                    'Calcula Tus Impuestos en Ecuador',
                    style: TextStyle(
                        fontSize: 65,
                        color: Colors.black,
                        fontWeight: FontWeight.w900),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                elevation: 15,shadowColor: Colors.indigo,
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular (25)),
                backgroundColor: const Color(0xff1a237e),),
              child: const Padding(
                padding: EdgeInsets.all(25.0),
                child: AutoSizeText(
                  'Noticias Tributarias y Económicas',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyNews(),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 5, 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: const Color(0xff1a237e),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RentaAnual(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: AutoSizeText(
                            'Calcula el Impuesto a la Renta Anual',
                            wrapWords: false,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: const Color(0xff1a237e),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IvaLiq(),
                          ),
                        );
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: AutoSizeText(
                            'Calcula la Liquidación de I.V.A.',
                            wrapWords: false,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
            child: Image.network(
              'https://ecuasolucion.com/wp-content/uploads/2022/01/ezgif.com-gif-maker.gif',
              loadingBuilder: (context, child, progress) {
                return progress == null
                    ? child
                    : const LinearProgressIndicator(
                        backgroundColor: Colors.grey);
              },
            ),
          ),
        ),
      ],
    );
  }
}

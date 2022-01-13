import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class RentaAnual extends StatefulWidget {
  const RentaAnual({Key? key}) : super(key: key);

  @override
  _RentaAnualState createState() => _RentaAnualState();
}

class _RentaAnualState extends State<RentaAnual> {
  // the result which will be displayed on screen
  late double result1 = 0;
  late double result2 = 0;
  late double result3 = 0;

  //create a textcontroller to retrieve the answer
  final textController = TextEditingController();

  void calculate1() {
    // textController.text is a string and we have to convert it to double
    final enteredNumber = double.parse(textController.text);
    setState(() {
      if (enteredNumber <= 11310.00) {
        result1 = enteredNumber * 0;
      } else if (enteredNumber > 11310.00 && enteredNumber <= 14410) {
        result1 = (enteredNumber - 11310.01 - enteredNumber * 0.0945) * 0.05;
      } else if (enteredNumber > 14410.00 && enteredNumber <= 18010) {
        result1 = (enteredNumber - 14410.01 - enteredNumber * 0.0945) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 18010.00 && enteredNumber <= 21630) {
        result1 = (enteredNumber - 18010.01 - enteredNumber * 0.0945) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 21630 && enteredNumber <= 31630) {
        result1 = (enteredNumber - 21630.01 - enteredNumber * 0.0945) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 31630 && enteredNumber <= 41630) {
        result1 = (enteredNumber - 31630.01 - enteredNumber * 0.0945) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 41630 && enteredNumber <= 51630) {
        result1 = (enteredNumber - 41630.01 - enteredNumber * 0.0945) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 51630 && enteredNumber <= 61630) {
        result1 = (enteredNumber - 51630.01 - enteredNumber * 0.0945) * 0.30 +
            (51630 - 41630.01) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 61630 && enteredNumber <= 100000) {
        result1 = (enteredNumber - 61630.01 - enteredNumber * 0.0945) * 0.35 +
            (61630 - 51630.01) * 0.30 +
            (51630 - 41630.01) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 100000.00 && enteredNumber < 9999999999) {
        result1 = (enteredNumber - 100000.01 - enteredNumber * 0.0945) * 0.37 +
            (100000 - 61630.01) * 0.35 +
            (61630 - 51630.01) * 0.30 +
            (51630 - 41630.01) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      }
    });
  }

  void calculate2() {
    // textController.text is a string and we have to convert it to double
    final enteredNumber = double.parse(textController.text);
    setState(() {
      if (enteredNumber <= 11310.00) {
        result2 = enteredNumber * 0;
      } else if (enteredNumber >= 11310.00 && enteredNumber < 14410) {
        result2 = (enteredNumber - 11310.01) * 0.05;
      } else if (enteredNumber >= 14410.00 && enteredNumber < 18010) {
        result2 = (enteredNumber - 14410.01) * 0.10 + (14410 - 11310.01) * 0.05;
      } else if (enteredNumber >= 18010.00 && enteredNumber < 21630) {
        result2 = ((enteredNumber - 18010.01)) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 21630 && enteredNumber <= 31630) {
        result2 = (enteredNumber - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 31630 && enteredNumber <= 41630) {
        result2 = (enteredNumber - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 41630 && enteredNumber <= 51630) {
        result2 = (enteredNumber - 41630.01) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 51630 && enteredNumber <= 61630) {
        result2 = (enteredNumber - 51630.01) * 0.30 +
            (51630 - 41630.01) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 61630 && enteredNumber <= 100000) {
        result2 = (enteredNumber - 61630.01) * 0.35 +
            (61630 - 51630.01) * 0.30 +
            (51630 - 41630.01) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      } else if (enteredNumber > 100000.00 && enteredNumber < 9999999999) {
        result2 = (enteredNumber - 100000.01) * 0.37 +
            (100000 - 61630.01) * 0.35 +
            (61630 - 51630.01) * 0.30 +
            (51630 - 41630.01) * 0.25 +
            (41630 - 31630.01) * 0.20 +
            (31630 - 21630.01) * 0.15 +
            (21630 - 18010.01) * 0.12 +
            (18010 - 14410.01) * 0.10 +
            (14410 - 11310.01) * 0.05;
      }
    });
  }

  void calculate3() {
    final enteredNumber = double.parse(textController.text);
    setState(
      () {
        if (enteredNumber <= 20000) {
          result3 = enteredNumber * 0 + 60;
        } else if (enteredNumber > 20000 && enteredNumber <= 50000) {
          result3 = enteredNumber * 0.01 + 60;
        } else if (enteredNumber > 50000 && enteredNumber <= 75000) {
          result3 = enteredNumber * 0.0125 + 360;
        } else if (enteredNumber > 75000 && enteredNumber <= 100000) {
          result3 = enteredNumber * 0.0150 + 672.5;
        } else if (enteredNumber > 100000 && enteredNumber <= 200000) {
          result3 = enteredNumber * 0.0175 + 1047.2;
        } else if (enteredNumber > 200000 && enteredNumber <= 300000) {
          result3 = enteredNumber * 0.0200 + 2797.52;
        } else if (enteredNumber > 300000 && enteredNumber <= 9999999999) {
          result3 = enteredNumber * 0.0200 + 2797.52;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            //  passing this to our root
            Navigator.of(context).pop();
          },
        ),
        elevation: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'COHETE',
              style: TextStyle(fontSize: 14),
            ),
            (Image.asset("images/rocket-artists-ai.png", height: 60)),
            const Text(
              'IMPUESTOS',
              style: TextStyle(fontSize: 14),
            ),
            // Text(widget.title),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Card(
                color: Colors.white60,
                child: Center(
                  child: AutoSizeText(
                    'Ingreso Anual',
                    style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 35),
                  ),
                ),
              ),
            ),
          ),
          // The user will type something here
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextField(
              style: const TextStyle(fontWeight: FontWeight.w600),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 1),
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.center,
              controller: textController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 5),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: const Color(0xff1a237e), elevation: 25.0),
              onPressed: () {
                calculate1();
                calculate2();
                calculate3();
              },
              child: const AutoSizeText(
                'CALCULAR',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 28),
              ),
            ),
          ),

          // Display the result

          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AutoSizeText(
                            'I.R. Dependientes Sin Deducciones', wrapWords: false,
                            textAlign: TextAlign.center, maxLines: 2,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                            fontSize: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                            child: AutoSizeText(
                              NumberFormat.simpleCurrency().format(result1),
                              textAlign: TextAlign.center,maxLines: 1,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,fontSize: 25,
                                color: Color(0xff00c853),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Card(
                    color: Colors.white70,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const AutoSizeText(
                            'I.R. P. Independientes Sin Deducciones',
                            textAlign: TextAlign.center,maxLines: 2,
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                            child: AutoSizeText(
                              NumberFormat.simpleCurrency().format(result2),
                              textAlign: TextAlign.center,maxLines: 1,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,fontSize: 25,
                                  color: Color(0xff00c853)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Display the result
          Expanded(
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AutoSizeText(
                      'Microempresarios / RIMPE',
                      maxLines: 3,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold,
                      fontSize: 25),
                    ),
                    AutoSizeText(
                      NumberFormat.simpleCurrency().format(result3),
                      maxLines: 1,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color(0xff00c853)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

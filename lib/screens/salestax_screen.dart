import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IvaLiq extends StatefulWidget {
  const IvaLiq({Key? key}) : super(key: key);

  @override
  _IvaLiqState createState() => _IvaLiqState();
}

class _IvaLiqState extends State<IvaLiq> {
// the result which will be displayed on screen
  late double result = 0;

  //create a textcontroller to retrieve the answer
  final textController = TextEditingController();
  final textController2 = TextEditingController();

// the function which calculates square
  void calculate1() {
    // textController.text is a string and we have to convert it to double
    final enteredNumber = double.parse(textController.text);
    final enteredNumber2 = double.parse(textController2.text);
    setState(() {
      result = enteredNumber * 0.12 - enteredNumber2 * 0.12;
    });
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            const Text(
              'COHETE',
              style: TextStyle(fontSize: 14),
            ),
            Expanded(
                child: (Image.asset("images/rocket-artists-ai 60x60.png",
                    height: 60))),
            const Text(
              'IMPUESTOS',
              style: TextStyle(fontSize: 14),
            ),
            // Text(widget.title),
          ],
        ),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Card(
              color: Colors.white60,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Center(
                  child: AutoSizeText(
                    'Ventas Mensuales Sin IVA',
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
              ),
            ),
          ),

          // The user will type something here
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextField(
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.center,
              controller: textController,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),

          const Expanded(
            child: Card(
              color: Colors.white60,
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Center(
                  child: AutoSizeText(
                    'Compras Mensuales Sin IVA',
                    maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
            child: TextField(
              style: const TextStyle(height: 1, fontWeight: FontWeight.w600),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(),
              ),
              textAlign: TextAlign.center,
              controller: textController2,
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xff1a237e))),
                onPressed: () {
                  calculate1();
                },
                child: const AutoSizeText(
                  'CALCULAR',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 35),
                ),
              ),
            ),
          ),

          // Display the result
          Expanded(
            flex: 2,
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const AutoSizeText(
                      'IVA A PAGAR Sin Retenciones',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 35),
                    ),
                    AutoSizeText(
                      NumberFormat.simpleCurrency().format(result),
                      minFontSize: 16,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                          fontSize: 35),
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

import 'package:flutter/material.dart';
import 'package:flutter_link_previewer/flutter_link_previewer.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' show PreviewData;

class MyNews extends StatefulWidget {
  const MyNews({Key? key}) : super(key: key);



  @override
  _MyNewsState createState() => _MyNewsState();
}

class _MyNewsState extends State<MyNews> {
  Map<String, PreviewData> datas = {};

  List<String> get urls => const [
    'https://www.sri.gob.ec/web/intersri/noticias7',
    'https://kchcomunicacion.com/economia/',
    'https://www.radiohuancavilca.com/cifras',
    'https://www.eluniverso.com/noticias/economia',
    'https://www.elcomercio.com',
    'https://www.expreso.ec',
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
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
        title: Row(mainAxisAlignment: MainAxisAlignment.center,
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
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: urls.length,
              itemBuilder: (context, index) => Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  key: ValueKey(urls[index]),
                  margin: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    color: Color(0xfff7f7f8),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(20),
                    ),
                    child: LinkPreview(
                      enableAnimation: true,
                      onPreviewDataFetched: (data) {
                        setState(
                              () {
                            datas = {
                              ...datas,
                              urls[index]: data,
                            };
                          },
                        );
                      },
                      previewData: datas[urls[index]],
                      text: urls[index],
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
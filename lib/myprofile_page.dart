import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key}) : super(key: key);

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
          children: <Widget>[
            const Text(
              'COHETE',
              style: TextStyle(fontSize: 12),
            ),
            (Image.asset("images/rocket artists-ai.png", height: 45)),
            const Text(
              'IMPUESTOS',
              style: TextStyle(fontSize: 12),
            ),
            // Text(widget.title),
          ],
        ),
        
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.indigo[900],
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[

                  Text(
                    'Dax Chica',
                    style: TextStyle(
                        color: Color(0xffffffff),
                        fontSize: 30,
                        fontFamily: 'Pacifico',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  SizedBox(
                    width: 150,
                    height: 20,
                    child: Divider(
                      color: Colors.white54,
                      height: 10.0,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.feed,
                        color: Colors.black,
                      ),
                      title: Text(
                        'RUC 0908909898001',
                        style: (TextStyle(
                            fontSize: 18, color: Colors.black, wordSpacing: 2)),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      title: Text(
                        'daxchica@hotmail.com',
                        style: (TextStyle(fontSize: 18)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
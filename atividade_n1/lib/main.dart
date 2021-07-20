import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    title: 'Avaliação N1',
    home: FirstRoute(),
    debugShowCheckedModeBanner: false,
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text('Recanto do Sul',
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('imagens/frente-restaurante.jpg'),
            Text(
              'Seja Bem-Vindo(a) ao Recanto do Sul',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            Text(
              'Saiba mais sobre nosso estabelecimento clicando no botão abaixo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                color: Colors.lightGreen,
              ),
            ),
            ElevatedButton(
              child: Text(
                'Saber mais',
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
                minimumSize: Size(200, 70),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
            ),
          ],
        )
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text('Recanto do Sul',
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
              ListTile(
                leading: Icon(Icons.schedule),
                title: Text('Agendar',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Carápio',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('contato',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.add_location),
                title: Text('Localização',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: Text(
                        'Especialidade da Casa:',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                        minimumSize: Size(520, 80),
                      ), 
                      onPressed: (){},
                    ),
                    Image.asset('imagens/churrasco.jpg'),
                    SizedBox(   //Use of SizedBox
                      height: 40,
                    ),
                    Text(
                      'Confira os pricipais pratos:',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.lightGreen,
                      ),
                    ),
                    SizedBox(   //Use of SizedBox
                      height: 40,
                    ),
                    ElevatedButton(
                      child: Text(
                        'Conferir',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        minimumSize: Size(200, 65),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) =>ThirdRoute()),
                        );
                      },
                    ),
                    SizedBox(   //Use of SizedBox
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text(
                        'Voltar',
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                        minimumSize: Size(200, 65),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) =>FirstRoute()),
                        );
                      },
                    ),
                  ]
                ),
              ),   
          ],
        ),
      )
    );
  }
}

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text('Recanto do Sul',
          style: TextStyle(
            fontSize: 35,
          ),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset('imagens/foto1.jpeg'),
            Image.asset('imagens/foto2.jpeg'),
            Image.asset('imagens/foto3.jpeg'),

            ElevatedButton(
            child: Text(
              'Voltar',
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              minimumSize: Size(200, 65),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
            ),
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) =>SecondRoute()),
              );
            },
          ),
          ],
          
        ),
      ),
    );
  }
}




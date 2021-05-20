import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Najera: Login',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool acceso = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu_rounded,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Botón Menú');
          },
        ),
        title: Text('Najera: Login'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search_rounded,
              semanticLabel: 'buscar',
            ),
            onPressed: () {
              print('Botón Buscar');
            },
          ),
          IconButton(
            icon: Icon(
              Icons.tune,
              semanticLabel: 'filtrar',
            ),
            onPressed: () {
              print('Botón Filtrar');
            },
          ),
        ],
      ),//AppBar
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Container(
                  heigth: 200.0,
                  width:200.0,
                  child: Image.network(
                    'https://raw.githubusercontent.com/Najeragim/imagenes/main/my-logo.png',
                  ),
                )
                
                SizedBox(height: 16.0),
              ],//Hijos de Columna
            ),//Columna
            if(!acceso)
              Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Nombre de usuario',
                    ),
                  ),
                  SizedBox(height: 12.0),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),
                    obscureText: true,
                  ),
                ],//Niños
              ),//Columna
            //If verdadero
          ],//Hijos
        ),//ListView
      ),//Body: SafeArea
    );//Scaffold
  }//Constructor
}//Clase
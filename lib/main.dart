import 'package:comeisp20/boton.dart';
import 'package:comeisp20/boton_imagen.dart';
import 'package:comeisp20/botonraised.dart';
import 'package:comeisp20/fila.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Título de la App que vemos solo cuando pulsamos el botón de "Listar las APPs abiertas" (cuadradito)
      title: 'Comedor ISP20',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("Comedor ISP20 - 2019"),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              tituloPrincipal,
              tituloSecundario,
              imagenIsp20,
              //Fila(), 
              //Boton(),
              BotonRaised()
              
            ],
          ),
        ),
      ),
      
    );
    
  }

  //final imagenIsp20= new Image.asset(
  //'images/logo.png',
  //fit:BoxFit.fill,

 // );

  final imagenIsp20 = Container(
    width: 90.0,
    height: 90.0,
    margin: EdgeInsets.only(
        right: 20.0
    ),
    decoration: BoxDecoration(
        border: Border.all(
            color: Colors.white,
            width: 2.0,
            style: BorderStyle.solid
        ),
        shape: BoxShape.circle,
        image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/logo.png')
            //image: NetworkImage(usuario.fotoURL)
        )
    ),
  );

  final tituloSecundario = new Text(
  "2do Año 2019 - Técnico Superior en Desarrollo de Software",
    style: new TextStyle(fontSize:18.0,
    color: const Color(0xFF000000),
    fontWeight: FontWeight.w800,
    fontFamily: "Lato"),
  );

  final tituloPrincipal= new Text(
    "Aplicación movil para comedores escolares",
      style: new TextStyle(fontSize:18.0,
      color: const Color(0xFF000000),
      fontWeight: FontWeight.w800,
      fontFamily: "Lato"),
    );
}

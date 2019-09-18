import 'package:comeisp20/boton.dart';
import 'package:comeisp20/boton_imagen.dart';
import 'package:comeisp20/botonraised.dart';
import 'package:comeisp20/fila.dart';
import 'package:flutter/material.dart';


class Pantalla4 extends StatelessWidget {
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
             imagenIsp20,
              tituloPrincipal,
              tituloSecundario,
              
              //Fila(), 
              //Boton(),
             // BotonRaised()
              
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
            image: AssetImage('images/papas.jpg')
            //image: NetworkImage("https://i1.wp.com/www.lasrecetasdelaura.com/wp-content/uploads/2016/10/papas-al-horno-rectangular.jpg?w=680&ssl=1")
        )
    ),
  );

  final tituloSecundario = new Text(
  "Postre: Manzana",
    style: new TextStyle(fontSize:24.0,
    color: const Color(0xFF000000),
    fontWeight: FontWeight.w800,
    fontFamily: "Lato"),
  );

  final tituloPrincipal= new Text(
    "Papas al horno",
      style: new TextStyle(fontSize:36.0,
      color: const Color(0xFF000000),
      fontWeight: FontWeight.w800,
      fontFamily: "Lato"),
    );
}

import 'package:flutter/material.dart';

class Fila extends StatelessWidget {
  @override




  Widget build(BuildContext context) {
   
    final imagenIsp20 = Container(
      width: 120.0,
      height: 120.0,
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

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        imagenIsp20,
        new Text(
        "Primer comedor",
          style: new TextStyle(fontSize:18.0,
          color: const Color(0xFF000000),
          fontWeight: FontWeight.w800,
          fontFamily: "Roboto"),
        )
      ]
      
    );
  }
}
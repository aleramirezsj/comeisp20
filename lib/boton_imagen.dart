import 'package:flutter/material.dart';

class BotonImagen extends StatelessWidget {
  const BotonImagen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Scaffold.of(context).showSnackBar(
          SnackBar(content: Text("Hola Mundo Flutter"))
        );
      }, 
      child: Container(
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
    )
    );
  }
}
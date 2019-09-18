import 'package:comeisp20/pantalla1.dart';
import 'package:comeisp20/pantalla2.dart';
import 'package:comeisp20/pantalla3.dart';
import 'package:comeisp20/pantalla4.dart';
import 'package:flutter/material.dart';

class HomeApp extends StatefulWidget {
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  int indicePantallaSeleccionada = 0;
  final List<Widget> pantallasApp = [
    Pantalla1(),
    //EstadoPantallaBuscar(),
    Pantalla2(),
    Pantalla3(),
    Pantalla4(),
   // ListaImagenesRetoFinal(),
  ];

  void onTapSeleccionPantalla(int index) {
    setState(() {
      indicePantallaSeleccionada = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pantallasApp[indicePantallaSeleccionada],
      bottomNavigationBar: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: Colors.white, primaryColor: Colors.purple),
          child: BottomNavigationBar(
            onTap: onTapSeleccionPantalla,
            currentIndex: indicePantallaSeleccionada,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), title: Text("Inicio")),
             // BottomNavigationBarItem(
                //  icon: Icon(Icons.search), title: Text("Buscar")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), title: Text("Botones")),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), title: Text("Hacha")),                  
            ],
          )),
          floatingActionButton: FloatingActionButton(
        onPressed:activarPantalla4,
                tooltip: 'Menu del dia',
                child: Icon(Icons.cake),
              ), // This tr
            );
          }
        
          void activarPantalla4() {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return Pantalla4();
            }),
          );
  }
}

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({ Key? key }) : super(key: key);

  // variable, propiedad

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );
    int contador = 10;

    return  Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen', style: TextStyle(),),
        elevation: 10,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const Text('Número de Clicks', style: fontSize30 ),
            Text( '$contador', style: fontSize30 )
          ],
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon( Icons.add ),
        onPressed: () { 
          contador++;
          print('Hola mundo $contador');
         },
        ),
    );
  }


  
}



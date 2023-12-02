import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({ Key? key }) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  int contador = 10;

  void aumentar() {
    contador++;
    setState(() {});
  }

  void reiniciar() {
    contador = 0;
    setState(() {});
  }

  void disminuir() {
    contador--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {

    const fontSize30 = TextStyle( fontSize: 30 );
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen', style: TextStyle(color: Colors.white),),
        elevation: 10,
        centerTitle: true,
        backgroundColor: Colors.blue,
        
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFloatingActions(
        opcionAumentar: aumentar,
        opcionReiniciar: reiniciar,
        opcionDisminuir: disminuir,
    
      ),
    );
  }
}




class CustomFloatingActions extends StatelessWidget {

  final Function opcionAumentar;
  final Function opcionReiniciar;
  final Function opcionDisminuir;


  const CustomFloatingActions({
    Key? key, 
    required this.opcionAumentar, 
    required this.opcionReiniciar,
    required this.opcionDisminuir, 
  }) : super (key: key );

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: const Icon( Icons.exposure_plus_1_outlined, color: Colors.white),
          onPressed: () => opcionAumentar(),
        ),
        
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: const Icon( Icons.exposure_zero, color: Colors.white),
          onPressed: () => opcionReiniciar(),
        ),
        
        FloatingActionButton(
          backgroundColor: Colors.blue,
          child: const Icon( Icons.exposure_minus_1, color: Colors.white),
          onPressed: () => opcionDisminuir(),
        ),
      ],
    );
  }
}



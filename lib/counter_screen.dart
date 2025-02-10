import 'package:app1/custom_floating_button.dart';
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    const TextStyle estilo = TextStyle(
      fontSize: 30,
      color: Colors.deepPurple,
      fontWeight: FontWeight.bold,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador de taps'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Número de taps',
              style: estilo,
            ),
            Text(
              '$contador',
              style: estilo,
            ),
          ],
      )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton:CustomFloatingButton(
        increase: incrementar,
        decrease: decrementar,
        reset: reiniciar
        )
      );
  }

  void incrementar(){
    contador++;
    setState(() {});
    //print('Presionaste botón incrementar');
    //print('Contador: $contador');
  }

  void decrementar(){
    contador--;
    setState(() {});
    //print('Presionaste botón decrementar');
    //print('Contador: $contador');
  }

  void reiniciar(){
    contador=0;
    setState(() {});
    //print('Presionaste botón reiniciar');
    //print('Contador: $contador');
  }

}

import 'package:flutter/material.dart';

class VentanaPrincipal extends StatelessWidget {
  const VentanaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //propiedad de appBar en minúscula y clase AppBar en mayúscula
      appBar: AppBar(
        title: const Text('App 1'),
      ),
      body: const Center(
        child: Column(
          children: [
            Text('CHIKIS',
            style: TextStyle(
              fontSize: 35.0,
              color: Color.fromARGB(255, 255, 20, 199)
            ),
            ),
            Text('Toby'),
            Text('🐶🐶🐶🐶'),
            Text('Popi'),
            Text('Scooby'),
          ],
        ),
      ),
    );
  }
}


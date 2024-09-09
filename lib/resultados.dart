import 'package:flutter/material.dart';

class Conversor extends StatelessWidget {
  final double temperatureCelsius;

  const Conversor({super.key, required this.temperatureCelsius});
  @override
  Widget build(BuildContext context) {
    // Conversão de Celsius para Fahrenheit e Kelvin
    final double temperatureFahrenheit = (temperatureCelsius * 9 / 5) + 32;
    final double temperatureKelvin = temperatureCelsius + 273.15;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultado da Conversão'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Celsius: ${temperatureCelsius.toStringAsFixed(2)} °C',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Fahrenheit: ${temperatureFahrenheit.toStringAsFixed(2)} °F',
              style: const TextStyle(fontSize: 20),
            ),
            Text(
              'Kelvin: ${temperatureKelvin.toStringAsFixed(2)} K',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Volta para a primeira página
              },
              child: const Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: file_names
import 'package:flutter/material.dart';
import 'package:celsiusconvert/resultados.dart'; // Importando a segunda rota

class FirstRoute extends StatefulWidget {
  const FirstRoute({super.key});

  @override
  State<FirstRoute> createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  final TextEditingController _controller = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(Icons.ac_unit,size:100.0, color: Color.fromARGB(255, 130, 183, 226),),
        centerTitle: true, actions: <Widget>[IconButton(onPressed: clearFields, icon: const Icon(Icons.refresh))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Temperatura ºC',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final String tempCelsius = _controller.text;
                if (tempCelsius.isNotEmpty) {
                  final double tempC = double.parse(tempCelsius);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Conversor(temperatureCelsius: tempC),
                    ),
                  );
                }
              },
              child: const Text('Converter'),
            ),
          ],
        ),
      ),
    );
  }

  void clearFields() {
    setState(() {
      _controller.clear();
      formKey = GlobalKey<FormState>();
    });
  }
}

import 'package:flutter/material.dart';
import 'screens/PantallaInicio.dart';

void main() {
  runApp(
    const MyApp(), // runApp inicia la aplicación y toma un widget como argumento
  );
}

class MyApp extends StatelessWidget {
  // MyApp es el widget principal de la aplicación
  const MyApp({
    // constructor clase MyApp, utiliza una clave para identificar el widget
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // método build define cómo se renderiza el widget en la pantalla
    return MaterialApp(
      // MaterialApp widget que configura la aplicación con temas, navegación...
      title: 'Reminders App', // título
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PantallaInicio(), // pantalla inicial
    );
  }
}

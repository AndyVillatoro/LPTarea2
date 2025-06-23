import 'package:flutter/material.dart';

class PantallaInicio extends StatelessWidget {
  const PantallaInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // color fondo  blanco
      body: SafeArea(
        // SafeArea para que contenido no se superponga con notch o cámara
        child: Padding(
          padding: const EdgeInsets.all(
            18.0, // padding uniforme alrededor del contenido
          ),
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // centrar los elementos verticalmente
            crossAxisAlignment: CrossAxisAlignment
                .center, // centrar los elementos horizontalmente
            children: [
              const Text(
                'Welcome\nto Reminders', // texto principal superior
                textAlign: TextAlign.center, // centra el texto horizontalmente
                style: TextStyle(
                  fontSize: 36, // tamaño de Welcome to Reminders
                  fontWeight: FontWeight.bold, // texto más grueso
                ),
              ),
              const SizedBox(
                height:
                    35, // espaciado vertical entre el título y características
              ),
              _caracteristicaItem(
                icon: Icons.alarm,
                titulo: 'Quick Creation', //característica
                descripcion:
                    'Simply type in your list, ask Siri, or add a reminder from your Calendar app.',
                iconColor: Colors.green,
              ),
              _caracteristicaItem(
                icon: Icons.shopping_cart,
                titulo: 'Grocery Shopping', //característica
                descripcion:
                    'Create a Grocery List that automatically sorts items you add by category.',
                iconColor: Colors.orange,
              ),
              _caracteristicaItem(
                icon: Icons.people,
                titulo: 'Easy Sharing', // característica
                descripcion:
                    'Collaborate on a list, and even assign individual tasks.',
                iconColor: Colors.yellow,
              ),
              _caracteristicaItem(
                icon: Icons.view_list,
                titulo: 'Powerful Organization', //característica
                descripcion:
                    'Create new lists to match your needs, categorize reminders with tags, and manage reminders around your workflow with Smart Lists.',
                iconColor: Colors.blue,
              ),
              const Spacer(), // dejar botón abajo al final de la pantalla
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // acción  botón, actualmente vacío
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // color botón azul
                    minimumSize: const Size(
                      200, //tamaño mínimo del botón (ancho y alto)
                      50,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        8, // bordes menos redondeados
                      ),
                    ),
                  ),
                  child: const Text(
                    'Continue', // texto botón
                    style: TextStyle(
                      fontSize: 20, // tamaño de fuente del texto del botón
                      color: Colors.white, // color texto botón
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget reutilizable para mostrar una característica con ícono, título y descripción
  Widget _caracteristicaItem({
    required IconData icon,
    required String titulo,
    required String descripcion,
    required Color iconColor,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: iconColor),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titulo,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  descripcion,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

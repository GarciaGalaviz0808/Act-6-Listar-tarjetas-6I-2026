import 'package:flutter/material.dart';

void main() => runApp(AppArtStore());

class AppArtStore extends StatelessWidget {
  const AppArtStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosClientes(),
     );
  }
}//DIn clase AppArtStore


class LosClientes extends StatelessWidget {
  const LosClientes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true ,
  title: const Text(
    'Art Store',
    style: TextStyle(color: Colors.white), // Texto color blanco
  ),
  backgroundColor: const Color(0xFF3E2723), // Café oscuro (Brown 900)
  leading: const Icon(
    Icons.brush, // Icono de brocha de pintura
    color: Colors.white,
  ),
  actions: [
    IconButton(
      icon: const Icon(Icons.brush, color: Colors.white), // Representa el marco
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.format_paint, color: Colors.white), // Representa el pincel/pintar
      onPressed: () {},
    ),
    IconButton(
      icon: const Icon(Icons.palette, color: Colors.white), // Representa la pintura/paleta
      onPressed: () {},
    ),
  ],
) ,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            _crearTarjeta(
              'Marc Spector ',
              'Encargado de óleos  .',
              'https://raw.githubusercontent.com/GarciaGalaviz0808/Imagenes-para-flutter-6to-I-fehca-11-Feb-2026/refs/heads/main/cliente1.png',
            ),
            _crearTarjeta(
              'Tony Stank',
              'Encargado de caballetes .',
              'https://raw.githubusercontent.com/GarciaGalaviz0808/Imagenes-para-flutter-6to-I-fehca-11-Feb-2026/refs/heads/main/cliente2.png',
            ),
            _crearTarjeta(
              'Jhonatan',
              'Encargado de pintura .',
              'https://raw.githubusercontent.com/GarciaGalaviz0808/Imagenes-para-flutter-6to-I-fehca-11-Feb-2026/refs/heads/main/cliente3.png',
            ),
            _crearTarjeta(
              'James Barnes',
              'Enargado de pasteles .',
              'https://raw.githubusercontent.com/GarciaGalaviz0808/Imagenes-para-flutter-6to-I-fehca-11-Feb-2026/refs/heads/main/cliente4.png',
            ),
          ],
        ),
      ),
  

    );//FIn de scaffold
  }
}//Fin clase LosClientes

  Widget _crearTarjeta(String titulo, String subtitulo, String urlImagen) {
    return Card(
      color: Colors.brown[100], // Café claro
      elevation: 6, // Sombreado
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(urlImagen),
        ),
        title: Text(
          titulo,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subtitulo,
          style: const TextStyle(color: Colors.black87),
        ),
        trailing: const Icon(
          Icons.thumb_up,
          color: Color(0xFF000080), // Azul marino
        ),
      ),
    );
  }

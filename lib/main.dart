import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Nancy Lara Baca 1225'),
          centerTitle: true,
          titleTextStyle:
              const TextStyle(color: Color(0xffffffff), fontSize: 25),
          backgroundColor: Color(0xff294a64),
        ),
        body: Center(
          child: EmpleadoCard(
            idEmpleado: '123',
            nombre: 'Juan Pérez',
            fechaIngreso: '2023-10-01',
          ),
        ),
      ),
    );
  }
}

class EmpleadoCard extends StatelessWidget {
  final String idEmpleado;
  final String nombre;
  final String fechaIngreso;

  EmpleadoCard({
    required this.idEmpleado,
    required this.nombre,
    required this.fechaIngreso,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5, // Sombra
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Bordes redondeados
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0), // Reducir el padding interno
        child: Row(
          mainAxisSize:
              MainAxisSize.min, // Hacer que el Row ocupe menos espacio
          children: [
            // Icono o imagen (opcional)
            Icon(Icons.person, size: 40), // Reducir el tamaño del icono
            SizedBox(width: 12), // Reducir el espacio entre el icono y el texto
            // Columna con los atributos
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize:
                  MainAxisSize.min, // Hacer que la Columna ocupe menos espacio
              children: [
                Text('ID: $idEmpleado',
                    style: TextStyle(
                        fontSize: 14)), // Reducir el tamaño de la fuente
                Text('Nombre: $nombre', style: TextStyle(fontSize: 14)),
                Text('Fecha de Ingreso: $fechaIngreso',
                    style: TextStyle(fontSize: 14)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

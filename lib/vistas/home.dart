import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appdelivery/widgets/productofila.dart';
import 'package:appdelivery/valores.dart' as productos;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        backwardsCompatibility: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Seleccionar productos', style: 
              TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(
                height: 25,
              ),

              ProductoFila(
                titulo: productos.tituloPastel,
                descripcion: productos.descripcionPastel,
                imagen: productos.imagenPastel,
                precio: productos.precioPastel
              ),

              SizedBox(
                height: 25,
              ),

              ProductoFila(
                titulo: productos.tituloCamarones,
                descripcion: productos.descripcionCamarones,
                imagen: productos.imagenCamarones,
                precio: productos.precioCamarones
              ),

              SizedBox(
                height: 25,
              ),

              ProductoFila(
                titulo: productos.tituloEnsalada,
                descripcion: productos.descripcionEnsalada,
                imagen: productos.imagenEnsalada,
                precio: productos.precioEnsalada
              ),

              SizedBox(
                height: 25,
              ),

              ProductoFila(
                titulo: productos.tituloHamburguesa,
                descripcion: productos.descripcionHamburguesa,
                imagen: productos.imagenHamburguesa,
                precio: productos.precioHamburguesa
              ),

              SizedBox(
                height: 25,
              ),

              ProductoFila(
                titulo: productos.tituloLasagna,
                descripcion: productos.descripcionLasagna,
                imagen: productos.imagenLasagna,
                precio: productos.precioLasagna
              ),
            ],
          ),
        ),
      ),
    );
  }
}
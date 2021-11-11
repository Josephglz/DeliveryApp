import 'package:appdelivery/vistas/verproducto.dart';
import 'package:flutter/material.dart';

class ProductoFila extends StatelessWidget
{
  final String titulo, descripcion, imagen;
  final double precio;

  const ProductoFila({Key? key, 
  required this.titulo, 
  required this.descripcion, 
  required this.imagen, 
  required this.precio}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(context, MaterialPageRoute(
          builder: (c) {
            return VerProducto(imagen: imagen, tag: titulo, descripcion: descripcion);
          }
          ),
        );
      },
      child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(titulo, 
                        style: const TextStyle(
                          fontSize: 17, 
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                      const SizedBox(
                        height: 10,
                      ),

                      Text(descripcion,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                  
                      Text(precio.toString(),
                        style: const TextStyle(
                          fontSize: 16
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  width: 25,
                ),

                Container(
                  child: Hero(
                    tag: titulo,
                    child: Image.asset(
                      'assets/images/' + imagen,
                      fit: BoxFit.cover,
                      width: 120,
                      height: 120,
                    ),
                  ),
                ),
              ],
            ),

            Container(
              height: 1,
              color: Colors.grey.shade200,
              margin: const EdgeInsets.only(top: 12),
            ),
      ],
      ),
    );
        

  }
}
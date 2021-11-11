import 'package:flutter/material.dart';

class VerProducto extends StatelessWidget {
  final String imagen;
  final String tag;
  final String descripcion;

  const VerProducto({Key? key, required this.imagen, required this.tag, required this.descripcion}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: tag,
            child: Image.asset(
              'assets/images/' + imagen,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            tag,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(descripcion
          ),

          SizedBox(
            height: 20,
          ),
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Color(0xffeeeeee),
                  onPressed:(){ },
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),

              Text('1'),
              
              Container(
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  heroTag: null,
                  elevation: 0,
                  backgroundColor: Color(0xffeeeeee),
                  onPressed:(){ },
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
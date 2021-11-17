import 'package:flutter/material.dart';

class VerProducto extends StatefulWidget {
  final String imagen;
  final String tag;
  final String descripcion;
  final double precio;

  const VerProducto(
    {Key? key,
    required this.imagen,
    required this.tag, 
    required this.descripcion,
    required this.precio})
    : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return VerProductoState();
  }
}

class VerProductoState extends State<VerProducto>{
  int contador = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: widget.tag,
            child: Image.asset(
              'assets/images/' + widget.imagen,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            widget.tag,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          
          Text(widget.descripcion,
            style: TextStyle(
              fontSize: 20,
            ),
          ),

          SizedBox(
            height: 60,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 10),
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: 
                   contador == 1 ? Color(0xfff6f6f6f) : Color(0xffeeeeee),
                  onPressed:(){
                    if(contador > 1)
                    {
                      contador--;
                      setState(() {});
                    }
                   },
                  child: Icon(
                    Icons.remove,
                    color: Colors.black,
                  ),
                ),
              ),
              Text(contador.toString(),
                style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),

              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(left: 10),
                child: FloatingActionButton(
                  heroTag: null,
                  elevation: 0,
                  backgroundColor: Color(0xffeeeeee),
                  onPressed:(){ 
                    contador++;
                    setState(() {});
                  },
                  child: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        height: 90,
        margin: EdgeInsets.only(left: 32),
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          onPressed: () { 
            Navigator.pop(context);
           },
          child: Text('Agregar ' + contador.toString() + ' al carrito • MXN' + (contador*widget.precio).toStringAsFixed(2), textAlign: TextAlign.center),
          style:
          ElevatedButton.styleFrom(
            primary: Colors.black,
            textStyle: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
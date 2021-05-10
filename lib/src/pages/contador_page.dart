
import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{

  @override
  createState()=>  _ContadorPageState();
}


class _ContadorPageState  extends State <ContadorPage>{

  final _stiloTexto = new TextStyle(fontSize: 25 ); 
  final _colorBotton = new TextStyle(backgroundColor: Colors.purple); 
  int _conteo = 10;

  @override

   @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter-DiFuentes'),
        centerTitle: true,
        backgroundColor: Colors.purple,

      ),
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('DiFuentes',style:TextStyle(fontSize: 45 )),
          Text('Contador',style:_stiloTexto),
          Text('$_conteo',style:_stiloTexto)
        ],) ,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
         SizedBox(width: 35.0,),
         FloatingActionButton(child: Icon(Icons.refresh),backgroundColor: (Colors.purple[700]),onPressed:_reset ),
         Expanded(child: SizedBox(width: 10.0,)),
         FloatingActionButton(child: Icon(Icons.remove),backgroundColor: (Colors.purple[700]),onPressed:_restar ),
         SizedBox(width: 10.0,),
         FloatingActionButton(child: Icon(Icons.add),backgroundColor: (Colors.purple[700]) ,onPressed:_agregar ),

     ],
    );
    
  }

  void _agregar(){
    setState(() {
      _conteo++;
    });
  }

  void _restar(){
    setState(() {
      _conteo--;
    });
  }
  void _reset(){
    setState(() {
      _conteo = 0;
    });
  }

}
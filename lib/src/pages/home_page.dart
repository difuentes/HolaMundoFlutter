
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final stiloTexto = new TextStyle(fontSize: 25 );
  final conteo = 10;

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
          Text('Contador',style:stiloTexto),
          Text('$conteo',style:stiloTexto)
        ],) ,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
          backgroundColor: Colors.purple,
        ) ,
        
          
        
    );
  }

}
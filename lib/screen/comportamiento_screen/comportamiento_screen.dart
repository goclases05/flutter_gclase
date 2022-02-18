
import 'package:flutter/material.dart';

import 'components/timeline_item_screen.dart';


class ComportamientoScreen extends StatelessWidget {
  const ComportamientoScreen({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    int contenido=0;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: size.width,
          //height: size.height,
          //color: Colors.red,
          child: 
          contenido==0?
          ListView.builder(
            itemCount: 8,
            itemBuilder: (context,index){
                return const TimeLineItemList();
            }
          )
          
          :
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/conducta.png'),
                Text('No se encontraron registros sobre tú comportamiento',textAlign: TextAlign.center,style:TextStyle(
                  color: Colors.lightBlue.shade700,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ))
              ],
            ),
          )
    
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimeLineItemList extends StatelessWidget {
  const TimeLineItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      axis: TimelineAxis.vertical,
      endChild: Card(
        elevation: 5,
        child: ExpansionTile(
        title:const Text("Reporte de Comportamiento",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
          subtitle:const Text("Buen comportamiento durante la actividad",style: TextStyle(
          fontWeight: FontWeight.w300
        ),),
          trailing:const Icon(Icons.info),
          children: [
            Container(
              color: Colors.blueGrey.shade50,
              child: const ListTile(
                title: Text('Detalles:'),
                subtitle: Text('Nisi tempor veniam officia cillum nisi dolor.Sint irure aliquip id excepteur ea fugiat sint commodo consequat.'),
              ),
            ),
            Container(
              color: Colors.brown.shade50,
              child: const ListTile(
                
                leading: Text('Puntos:'),
                title: Text('+10'),
              ),
            )
          ],
        ),
      ),/*const ListTile(
        title:Text("Reporte de Comportamiento"),
        subtitle: Text("Buen comportamiento durante la actividad"),
        trailing: Icon(Icons.info),

      )*/
      beforeLineStyle: LineStyle(color: Colors.grey,thickness: 5),
      afterLineStyle: LineStyle(color: Colors.grey,thickness: 5),
      indicatorStyle: IndicatorStyle(
        color: Colors.green,
        width: 40,
        height: 50,
        indicator: Container(
          width: 40,
          height: 50,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 107, 194, 37),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Icon(Icons.insert_emoticon,color: Colors.white,size: 25,),
        )

      ),
      //alignment: TimelineAlign.manual,
      //lineXY: 0.5,
    );
  }
}
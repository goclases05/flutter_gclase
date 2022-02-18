import 'dart:async';

import 'package:app_gclase/model/student_model.dart';
import 'package:app_gclase/widgets/card_itemList.dart';
import 'package:flutter/material.dart';

class ListaCursosScreen extends StatefulWidget {
  final List<Persona> items;

  const ListaCursosScreen(this.items);

  @override
  State<ListaCursosScreen> createState() => _ListaCursosScreenState();

}


class _ListaCursosScreenState extends State<ListaCursosScreen> {
  List<bool>isSelected=[false,false,false];

  @override
  void initState(){
    super.initState();
    _toggleLive(0,0); 
  }


  void _toggleLive(int? index,int inicial) {
      inicial=inicial+1;
      if (index==inicial) {
        isSelected=[false,false,true];
      } else {
        isSelected=[false,false,false];
      }
    
  }

  void change_live(){
    Timer(
      const Duration(seconds: 4),
      (){
        //_toggleLive();
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return  ListView.separated(
      itemCount: widget.items.length ,
      itemBuilder: (context,index){
      _toggleLive(index,1);
        return CardListItem(
          color: Colors.grey.shade50,
          child: ListTile(
            onLongPress: (){},
            title: Row(
                children:[
                  Expanded(child: Text(widget.items[index].nombre)),
                  ToggleButtons(
                    color: Colors.white,
                    selectedColor: Colors.orange,
                    selectedBorderColor: Colors.orange,
                    fillColor: const Color.fromARGB(255, 238, 177, 84),
                    splashColor: Colors.lightBlue.withOpacity(0.12),
                    hoverColor: Colors.lightBlue.withOpacity(0.04),
                    borderColor: const Color.fromARGB(82, 5, 73, 105),
                    borderRadius: BorderRadius.circular(15),
                    isSelected: isSelected,
                    
                    onPressed: (index) {
 
                    },
                    children: [
                        Image.asset('assets/cursos_color.png',height: 35,),
                        Image.asset('assets/pizarra_color.png',height: 35,),
                        if(index==2)
                        Image.asset('assets/video.png',height: 30,),
                        if(index!=2)
                        Image.asset('assets/no_video.png',height: 30,),
                    ],
                  )
                  ,
                  /*Expanded(child: Text(items[index])),
                  const CircleAvatar(
                    child: Icon(Icons.text_snippet),
                  ),
                  TextButton(
                    onPressed: () {
                        // Respond to button press
                    },
                    child: Icon(Icons.add, size: 18),
                  ),
                  const CircleAvatar(
                    child: Icon(Icons.desktop_mac),
                  ),
                  const CircleAvatar(
                    child: Icon(Icons.videocam),
                  ),*/
                ],
              ),
          ),
        );
      },
      separatorBuilder:(_,__)=>const Divider() ,
      
    );
  }
  
}

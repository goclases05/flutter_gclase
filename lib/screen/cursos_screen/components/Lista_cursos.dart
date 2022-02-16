import 'package:flutter/material.dart';

class ListaCursosScreen extends StatefulWidget {
  final List<String> items;

  const ListaCursosScreen(this.items);

  @override
  State<ListaCursosScreen> createState() => _ListaCursosScreenState();
}

class _ListaCursosScreenState extends State<ListaCursosScreen> {
  @override
  Widget build(BuildContext context) {
    List<bool>isSelected=[false,false,false];
    return ListView.separated(
      itemCount: widget.items.length ,
      itemBuilder: (context,index){
        return ListTile(
          title: Row(
              children:[
                Expanded(child: Text(widget.items[index])),
                ToggleButtons(
                  color: Colors.black.withOpacity(0.60),
                  selectedColor: Colors.yellow,
                  selectedBorderColor: Colors.orange,
                  fillColor: Colors.orange.withOpacity(0.30),
                  splashColor: Colors.lightBlue.withOpacity(0.12),
                  hoverColor: Colors.lightBlue.withOpacity(0.04),
                  borderRadius: BorderRadius.circular(4.0),
                  isSelected: isSelected,
                  onPressed: (index) {
                      // Respond to button selection
                      
                  },
                  children: [
                      Image.asset('assets/cursos_color.png',height: 35,),
                      Image.asset('assets/pizarra_color.png',height: 35,),
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
        );
      },
      separatorBuilder:(_,__)=>const Divider() ,
      
    );
  }
}
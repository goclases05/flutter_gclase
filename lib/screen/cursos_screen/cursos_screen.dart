
import 'package:app_gclase/model/student_model.dart';
import 'package:app_gclase/widgets/card_itemList.dart';
import 'package:app_gclase/widgets/card_swiper.dart';
import 'package:app_gclase/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'components/Lista_cursos.dart';

class CursosScreen extends StatelessWidget {
  const CursosScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //final size=MediaQuery.of(context).size;
    List<String> images=[
      'https://lasalle-hue.edu.gt/wp-content/uploads/2021/03/SLIDE21-1024x499.jpg',
      'https://lanotapositiva.com/wp-content/uploads/2019/12/colegio.jpg',
      'https://educowebmedia.blob.core.windows.net/educowebmedia/educospain/media/images/blog/2020/crece-la-desigualdad-educativa-2.jpg',
      'https://s03.s3c.es/imag/_v0/770x420/4/b/e/educacion-libros-pizarra.jpg',


    ];

    /*List<String> items=[
      'Matematicas','Artes Industriales','Lenguaje Maya','Ingles','Computación','Fisica Fundamental'
    ];*/

    List<Persona> items=[
      Persona("Matematicas"),
      Persona("Artes Industriales"),
      Persona("Lenguaje Maya"),
      Persona("Ingles"),
      Persona("Computación"),
      Persona("Fisica Fundamental")
    ];

    return SafeArea(
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10,),
         CardSwiper(images),
          Card(
            color: const Color.fromARGB(255, 249, 250, 250),
            elevation: 5,
            /*shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            ),*/
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Image.asset('assets/neze.png'),
                  title:const Text('Centro Educativo Personalizado Nezeel'),
                  onTap: (){},
                ),
              ],
            ),
          ),
          /*CardListItem(
            color: Colors.orange.shade100,
            child:const ListTile(
              title: Text("Actividades Hoy/ Proximos 7 días",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
              ),
            ),
          ),*/
          Container(
            color: Colors.white70,
            width: double.infinity,
            child: const Padding(
              padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Text("Listado de Cursos",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white70,
              child: ListaCursosScreen(items)
            )
          )
        ],
      ),
    );
  }
}

/*const Padding(
                  padding: EdgeInsets.all(0),
                  child: FadeInImage(
                    placeholder:  AssetImage('assets/loading.gif'),
                    image:  NetworkImage('https://via.placeholder.com/200x200'),
                    width: double.infinity,
                    height: 180,
                    fit:BoxFit.cover,
                    fadeInDuration: Duration(milliseconds: 300),
                  ),
                ),*/
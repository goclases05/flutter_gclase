import 'package:app_gclase/widgets/card_swiper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Peliculas en Cines"),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.search_outlined))
        ],
      ),
      body:SingleChildScrollView(
        child:  Column(
          children: [
            //TODO: CardSwiper
            //const CardSwiper(),
            //Listado horizontal de peliculas
            //MovieSlider()
            
          ],
        ),
      ),
    );
  }
}
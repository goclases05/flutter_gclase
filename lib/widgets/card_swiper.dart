import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';


class CardSwiper extends StatelessWidget {
  final List<String> images;
  const CardSwiper(this.images);

  @override
  Widget build(BuildContext context) {

    final size=MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height*0.2,
      //color: Colors.red,
      child: Swiper(
        itemCount:images.length ,
        viewportFraction: 0.8,
        scale: 0.9,
        itemWidth: size.width*0.8,
        itemHeight: size.height*0.2,
        itemBuilder: (BuildContext context,int index){

          return GestureDetector(
            onTap: ()=>Navigator.pushNamed(
              context, 
              'details',
              arguments: 'movie-instance'
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: FadeInImage(
                  placeholder: AssetImage('assets/loading_aut.gif'), 
                  image: NetworkImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );

        }
      )
    );
  }
}
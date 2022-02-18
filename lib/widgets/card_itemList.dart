import 'package:flutter/material.dart';

class CardListItem extends StatelessWidget {
  final Widget child;
  final Color color;
  const CardListItem({ Key? key, required this.child, required this.color }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:1,vertical: 3),
        width: double.infinity,
        decoration: _createCardShape(color),
        child: child,
      ),
    );
  }

  BoxDecoration _createCardShape(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(5),
      boxShadow:const [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 2,
          offset: Offset(0,3)
        )
      ]
    );
  }
}
import 'package:flutter/material.dart';

class CatBlock extends StatelessWidget {
  const CatBlock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                width: 100,
                height: 50,
                'https://images.pexels.com/photos/116675/pexels-photo-116675.jpeg?auto=compress&cs=tinysrgb&w=400',
                 fit: BoxFit.cover,
            ),
          ),
          Container(
            width: 100,
            height: 50,
            decoration: BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.circular(10)),
          ),
          const Positioned(
            left: 30,
            top: 15,
            child: Text("Car", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}

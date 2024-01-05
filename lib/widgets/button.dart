
import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String title;

  const CategoryButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(title),
      ),
    );
  }
}

// ignore: must_be_immutable
class EventCard extends StatelessWidget {
 String ?image;

   EventCard({Key? key,required String image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 215,
        height: 220,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Container(height: 170,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage('assets/images/music2.jpg'),
              fit: BoxFit.fill),
            )),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal:05,vertical:03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('wah cant, venue 01',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      Text('10:00 Am',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Icon(Icons.arrow_circle_right, color: Colors.white)
                ],
              ),
            ),
          ],
        ),
      );}
}
import 'package:flutter/material.dart';

class TrendingItems extends StatelessWidget {
  final double price;
  final String shoeName;
  final String img;
  const TrendingItems({
    Key? key, required this.price, required this.shoeName,required this.img
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        height: MediaQuery.of(context).size.height * 0.22,
        width: MediaQuery.of(context).size.width * 0.38,
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius:1,
                  ),
                    ],
              ),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 40,
                    height: 25,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10),), 
                    child: Center(child: Text("-20%"))),
                  Icon(Icons.favorite_border),
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.11,
                width: MediaQuery.of(context).size.width * 0.35,
                child: Image(image: NetworkImage(img),),
              ),
              Column(
                children: [
                  Row(children: [Text("\$$price",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)],),
                  Row(children: [Text(shoeName,style: TextStyle(fontSize: 15,color: Colors.blueGrey, fontWeight: FontWeight.bold,),),],)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

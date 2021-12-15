import 'package:flutter/material.dart';
import 'package:ui_task/main.dart';
import 'package:ui_task/widgets/TrendingItems.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12.0,right: 12.0),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.5,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TrendingItems(price: 125.00, shoeName: "Nike Air Shoes",img: "https://media.gq.com/photos/60ee00d268eb954e8131a5ea/master/w_1280,c_limit/Nike-ZoomX-Invincible-Run-Flyknit.jpg",),
                SizedBox(width: 10,),
                TrendingItems(price: 125.00, shoeName: "Nike Air Shoes",img: "https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4311a6fc-8436-4bc5-81aa-ae70c1bfbb42/air-zoom-alphafly-next-womens-road-racing-shoes-FzXvHX.png",),
              ],
            ),
            SizedBox(height:10),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TrendingItems(price: 125.00, shoeName: "Nike Air Shoes",img: "https://static.nike.com/a/images/t_default/d285be22-72d2-4578-b90b-82823d0846a6/air-vapormax-2021-fk-mens-shoes-NpTfFz.png",),
                SizedBox(width: 10,),
                TrendingItems(price: 125.00, shoeName: "Nike Air Shoes",img: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_wTBJ_qaEWJwsVnUQ-et7jxg7meGaiils5A&usqp=CAU"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
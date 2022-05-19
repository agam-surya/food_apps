import 'package:flutter/material.dart';
import 'package:food_apps/constant.dart';

class FoodItem extends StatelessWidget {
  const FoodItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: bgColor,
            radius: 10,
          ),
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/images/food.png',
              ),
              radius: 60,
            ),
          ),
          Text('Makanan'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rp. 12k',
                style: TextStyle(
                    color: bgColor, fontSize: 18, fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                backgroundColor: bgColor,
                child: Text(
                  "+",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                radius: 10,
              )
            ],
          )
        ],
      ),
    );
  }
}

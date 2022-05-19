import 'package:flutter/material.dart';
import 'package:food_apps/constant.dart';

import '../widgets/menu_item.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120.0,
                    decoration: const BoxDecoration(
                      color: bgColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: const Center(
                      child: const Text(
                        "Home",
                        style: const TextStyle(
                            color: Colors.white, fontSize: 18.0),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      margin: const EdgeInsets.only(left: 30, right: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30)),
                      child: AspectRatio(
                        aspectRatio: 7 / 4,
                        child: Image.asset(
                          'assets/images/food.png',
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 50,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color: bgColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: const [
                              SizedBox(
                                width: 50,
                              ),
                              Text(
                                'FOODS',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Text(
                                'DRINKS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Icon(
                                Icons.shopping_basket,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 6,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return FoodItem();
                  }),
            ))
          ],
        ),
      ),
    );
  }
}

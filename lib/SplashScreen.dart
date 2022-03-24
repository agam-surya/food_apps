import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(181, 0, 185, 62),
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 2,
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/food.webp'),
                    radius: 90),
                Text(
                  "Food Ordering App",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 35),
                ),
                TextButton(
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all<Size>(
                            Size(double.maxFinite, 55)),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromARGB(255, 221, 245, 231)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                    onPressed: () {},
                    child: Text('Get a Meal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        )))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

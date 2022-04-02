
import 'package:flutter/material.dart';

class BMIResultScreen extends StatelessWidget {
final int result;
final bool isMale;
final int age;

BMIResultScreen({
 required this.result,
 required this.isMale,
 required this.age,
// required this.image,
});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,

        title: Text(
          'BMI RESULT',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 200.0,
              horizontal:50.0 ,

          ),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey.withOpacity(0.2),
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //mainAxisSize: MainAxisSize.min,
              children:
              [
                isMale?
                Image(
                  image: AssetImage('assets/images/male.png'),
                  width: 100,
                  height: 100,
                ):Image(
                  image:AssetImage('assets/images/female.png'),
                  width: 100,
                  height: 100,
                ),
                SizedBox(height: 20,),
                Text(
                    'Gender: ${isMale ? 'Male' : 'Female'}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                    ),
                Text(
                    'Result: ${result.round()}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                    ),
                Text(
                    'Age: $age',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                    ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}

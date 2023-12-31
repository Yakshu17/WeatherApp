import 'package:flutter/material.dart';
import 'package:weather_app/Screens/WeatherScreen.dart';
import 'package:weather_app/models/constraints.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {

    Size size =MediaQuery.of(context).size;
    Constants myconstants =Constants();

    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Center(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/weatherguy.jpg',fit:BoxFit.fitHeight,),
            const SizedBox(height: 20,),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const WeatherScreen(),));
                },
              child: Container(
                height: 50,
                width: size.width*0.7,
                decoration: const BoxDecoration(
                  color: Colors.cyan,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: const Center(
                    child: Text('Get Started',style:TextStyle(color:Colors.black,fontSize: 19),)),
              ),
            )

            ],
            
          ),
        ),
      ),
    );
  }
}

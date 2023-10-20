import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/core/constants.dart';

class CurrentWeather extends StatelessWidget {
  const CurrentWeather({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: .22 * screenWidth, 
            height: .1 * screenHeight,   
            decoration: const BoxDecoration(
              //  color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  'https://cdn.weatherapi.com/weather/64x64/day/113.png',
                ),
              ),
            ),
          ),
          // kHeight5,
          Text('28.3', style: TextStyle(fontSize: 50, letterSpacing: 2)),
          Text('Kochi',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: kGreyColor)),
        ],
      ),
    );
  }
}

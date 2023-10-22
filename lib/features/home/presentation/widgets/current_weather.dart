import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart';

class CurrentWeather extends StatelessWidget {
  String weatherImage;
  String weatherCondition;
  String currentTemperature;
  String currentCity;
  CurrentWeather({
    super.key,
    required this.weatherImage,
    required this.weatherCondition,
    required this.currentTemperature,
    required this.currentCity,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    print('Weather Image : $weatherImage');
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
            decoration: BoxDecoration(
              //  color: Colors.green,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                  //'https://cdn.weatherapi.com/weather/64x64/day/113.png'
                  'https:${weatherImage}',
                ),
              ),
            ),
          ),

          // kHeight5,
          Text(
              //'28.3'
              currentTemperature,
              style: const TextStyle(
                fontSize: 50,
                letterSpacing: 2,
                color: kLightWhiteColor,
              )),
          Text(
              //'Kochi'
              weatherCondition,
              style: const TextStyle(
                fontSize: 22,  
                fontWeight: FontWeight.w400,
                color: kGreyColor,
                letterSpacing: 10,   
              )),
          Text(
              //'Kochi'
              currentCity,
              style: const TextStyle(
                fontSize: 12, 
                fontWeight: FontWeight.w400,
                color: kGreyColor,
              //  letterSpacing: 3, 
              )),
        ],
      ),
    );
  }
}

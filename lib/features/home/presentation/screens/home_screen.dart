import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/core/constants.dart';
import 'package:weather_app/dialog_box/exit_dialog_box.dart';
import 'package:weather_app/features/home/presentation/widgets/current_weather.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        showExitDialog(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Weather App',
            style: TextStyle(),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              kHeight10,
              CurrentWeather(),
              kHeight30,
              Row(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [Text('Additional Information',style: TextStyle(color: kGreyColor,fontSize: 22,fontWeight: FontWeight.w500),)],),    
            
            ],
          ),
        ),
      ),
    );
  }
}
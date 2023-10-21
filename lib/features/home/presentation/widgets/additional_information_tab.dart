import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/core/constants.dart';

import 'additional_information_listtile.dart';

class AdditionalInformationTab extends StatelessWidget {
  String windValue;
  String presureValue;
  String humidityValue;
  String feelsLikeValue;
  String lattitudeValue;
  String longitudeValue;
  AdditionalInformationTab(
      {super.key,
      required this.windValue,
      required this.presureValue,
      required this.humidityValue,
      required this.feelsLikeValue,
      required this.lattitudeValue,
      required this.longitudeValue,});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: .3 * screenHeight,
      decoration: const BoxDecoration(
          // image: DecorationImage(
          //   fit: BoxFit.fill,
          //     image: AssetImage('assets/images/image_blue.jpeg')),
          ),
      child: Column(
        children: [
          AdditionalInformationListTile(
            rowTitle: 'Wind',
            rowValue: '24',
          ),
          kHeight10,
          AdditionalInformationListTile(
            rowTitle: 'Presure',
            rowValue: '1014',
          ),
          kHeight10,
          AdditionalInformationListTile(
            rowTitle: 'Humidity',
            rowValue: '2',
          ),
          kHeight10,
          AdditionalInformationListTile(
            rowTitle: 'Feels like',
            rowValue: '24.6',
          ),
          kHeight10,
          AdditionalInformationListTile(
            rowTitle: 'Lattitude',
            rowValue: '25',
          ),
          kHeight10,
          AdditionalInformationListTile(
            rowTitle: 'Longitude',
            rowValue: '10',
          ),
          kHeight10,
        ],
      ),
    );
  }
}

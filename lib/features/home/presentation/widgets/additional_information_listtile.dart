

import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart'; 

class AdditionalInformationListTile extends StatelessWidget {
  String rowTitle;
  String rowValue;
   AdditionalInformationListTile({super.key,required this.rowTitle,required this.rowValue});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(rowTitle,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(
            rowValue, 
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400,color: kWhiteColor), 
          )
        ],
      ),
    );
  }
}

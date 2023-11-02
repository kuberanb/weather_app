import 'package:flutter/material.dart';
import 'package:weather_app/core/colors.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    Key? key,
    required this.options,
    required this.hint,
    this.value,
    required this.onChanged,
    this.isExpanded = true,
  }) : super(key: key);

  final List<String> options;
  final String hint;
  final String? value;
  final void Function(String?) onChanged;
  final bool isExpanded;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 7),
      margin: const EdgeInsets.only(right: 2, left: 2),
      decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: kYellowColor)),
      child: Center(
        child: DropdownButton<String>(
          dropdownColor: kWhiteColor,
          hint: Text(
            hint,
            style: TextStyle(fontSize: 14),
            textAlign: TextAlign.center,
          ),
          value: value,
          style: TextStyle(fontSize: 14),
          isExpanded: isExpanded,
          underline: SizedBox(),
          borderRadius: BorderRadius.circular(16),
          items: options
              .map(
                (e) => DropdownMenuItem<String>(
                  value: e.toString(),
                  child: Center(
                    child: Text(e,style: const TextStyle(color: kBlackColor),), 
                  ),
                ),
              )
              .toList(),
          onChanged: onChanged,
        ),
      ),
    );
  }
}

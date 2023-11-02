import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/core/constants.dart';
import 'package:weather_app/dialog_box/exit_dialog_box.dart';
import 'package:weather_app/features/common%20widgets/custom_dropdown.dart';
import 'package:weather_app/features/home/presentation/screens/register/bloc/register_bloc.dart';
import 'package:weather_app/features/home/presentation/weather_bloc/bloc/weather_bloc_bloc.dart';
import 'package:weather_app/features/home/presentation/widgets/additional_information_tab.dart';
import 'package:weather_app/features/home/presentation/widgets/current_weather.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<String> dropdownList = [
    "Kochi",
    "calicut",
    "chennai",
    "banglore",
    "delhi"
  ];

  String dropDownSelectedValue = '';

  int radioValue = 1;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<WeatherBlocBloc>(context).add(FetchLocation());
        //  BlocProvider.of<HomeBloc>(context).add(SetDropDown1Value(''));
      },
    );
    return WillPopScope(
      onWillPop: () async {
        showExitDialog(context);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          centerTitle: true,
          title: const Text(
            'Weather App',
            style: TextStyle(),
          ),
        ),
        body: BlocBuilder<WeatherBlocBloc, WeatherBlocState>(
            builder: (context, state2) {
          print('currentState in bloc : ${state2} ');
          return state2.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : (state2.isError == true && state2.ErrorText == 'No Internet')
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state2.ErrorText.toString(),
                          style: const TextStyle(fontSize: 22,letterSpacing: 5), 
                        ),
                        kHeight10, 
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                print('Retry Button in HomeScreen Clicked');
                                BlocProvider.of<WeatherBlocBloc>(context)
                                    .add(FetchLocation());
                              },
                              child: Container(
                                width: .3 * screenWidth,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: kBlackColor,
                                    ),
                                    borderRadius: BorderRadius.circular(2)),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'Retry',
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    )
                  : state2.isError
                      ? Center(
                          child: Text(
                            state2.ErrorText?.toString() ?? "",
                            style: TextStyle(),
                          ),
                        )
                      : SingleChildScrollView(
                          child: Container(
                            width: screenWidth,
                            height: screenHeight,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/images/image_blue.jpeg'
                                    // state.weatherDataModel.current?.condition?.icon ?? ''
                                    ),
                              ),
                            ),
                            child: Column(
                              children: [
                                kHeight10,

                                // CustomDropDown(
                                //     value: state,
                                //     options: dropdownList,
                                //     hint: 'select value',
                                //     onChanged: (value) {
                                //       if (value != null) {}
                                //     }),

                                ///////////////////

                                DropdownButtonFormField<String>(
                                  onChanged: (value) {
                                    if (value != null) {
                                      dropDownSelectedValue = value;
                                    }
                                  },
                                  onTap: () {},
                                  // validator: (value) {
                                  //   if (value == null || value.isEmpty) {
                                  //     return 'Please select your category.';
                                  //   }
                                  //   return null;
                                  // },
                                  // key: dropdownKeyCategory,
                                  hint: const Text(
                                    'Select a category',
                                    // style: GoogleFonts.montserrat(
                                    //   fontWeight: FontWeight.w400,
                                    //   fontSize: 15,
                                    // ),
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    contentPadding: const EdgeInsets.all(10),
                                    border: OutlineInputBorder(
                                      borderSide:
                                          BorderSide.none, // Remove the border
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  // value: '1',
                                  // value: '$selectedCategory   $selectedCategoryPercent',
                                  items: List.generate(dropdownList.length,
                                      (index) {
                                    return DropdownMenuItem<String>(
                                      onTap: () {
                                        // categoryId = state
                                        //     .complaintCategorylist[index]
                                        //     .complaintCatId;
                                      },
                                      value: dropdownList[index],
                                      child: Text(dropdownList[index]
                                          // style: GoogleFonts.montserrat(
                                          //   fontWeight: FontWeight.w400,
                                          //   fontSize: 15,
                                          // ),
                                          ),
                                    );
                                  }),
                                ),

                                //////////////////////////////////

                                // if (state is DropDown1Loaded) {
                                // CustomDropDown(
                                // options: const [
                                //   "Kochi",
                                //   "calicut",
                                //   "chennai",
                                //   "banglore",
                                //   "delhi"
                                // ],
                                //     hint: 'select location',
                                //     value: state.selectedValue,
                                //     onChanged: (value) {
                                //       if (value != null) {
                                //         BlocProvider.of<HomeBloc>(context)
                                //             .add(SetDropDown1Value(value));

                                //         print('dropDown1Value = ${state.selectedValue}');
                                //       }
                                //     }),
                                // }
                                //  else {
                                //   return Text('Error occured',style: TextStyle(),);
                                // }

                                CurrentWeather(
                                  currentCity:
                                      state2.weatherDataModel?.location?.name ??
                                          'Not Available',
                                  currentTemperature:
                                      "${state2.weatherDataModel?.current?.tempC ?? ''}c",
                                  weatherImage: state2.weatherDataModel?.current
                                          ?.condition?.icon
                                          ?.toString() ??
                                      '',
                                  weatherCondition: state2.weatherDataModel
                                          ?.current?.condition?.text ??
                                      "",
                                ),
                                kHeight30,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Additional Information',
                                      style: TextStyle(
                                        color: kWhiteColor,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(right: 20, left: 20),
                                  child: Divider(
                                    color: kGreyColor,
                                  ),
                                ),
                                AdditionalInformationTab(
                                  feelsLikeValue:
                                      '${state2.weatherDataModel?.current?.feelslikeC.toString() ?? ''}C',
                                  humidityValue: state2
                                          .weatherDataModel?.current?.humidity
                                          .toString() ??
                                      'Not Available',
                                  lattitudeValue: state2
                                          .weatherDataModel?.location?.lat
                                          .toString() ??
                                      'Not Available',
                                  longitudeValue: state2
                                          .weatherDataModel?.location?.lon
                                          .toString() ??
                                      'Not Available',
                                  presureValue:
                                      " ${state2.weatherDataModel?.current?.precipIn?.toString() ?? ''}In",
                                  windValue:
                                      "${state2.weatherDataModel?.current?.windKph?.toString() ?? ''}Kph",
                                ),
                                //   kHeight10,

                                kHeight10,

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        print(
                                            'Refresh Button in HomeScreen Clicked');
                                        BlocProvider.of<WeatherBlocBloc>(
                                                context)
                                            .add(FetchLocation());
                                      },
                                      child: Container(
                                        width: .3 * screenWidth,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: kBlackColor,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(2)),
                                        child: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Center(
                                            child: Text(
                                              'Refresh',
                                              style: TextStyle(),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                kHeight10,

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Last updated On : ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${state2.weatherDataModel?.current?.lastUpdated ?? ''}',
                                      style: TextStyle(fontSize: 10),
                                    ),
                                  ],
                                ),
                                kHeight30,

                                BlocBuilder<RegisterBloc, RegisterState>(
                                  builder: (context, state) {
                                    return Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            BlocProvider.of<RegisterBloc>(
                                                    context)
                                                .add(RegisterEvent.register(
                                                    selectedValue:
                                                        dropDownSelectedValue));
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.red),
                                            child: Center(
                                              child: state.isLoading
                                                  ? const CircularProgressIndicator()
                                                  : Text(
                                                      state.selectedValue,
                                                      style: const TextStyle(
                                                          color: Colors.white),
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),

                                BlocBuilder<RegisterBloc, RegisterState>(
                                  builder: (context, state) {
                                    return Radio(
                                        value: state.selectedRadioValue,
                                        groupValue: radioValue,
                                        onChanged: (value) {
                                          print(
                                              'state.selectedvalue : ${state.selectedValue}');
                                          print('radioValue : ${radioValue}');

                                          BlocProvider.of<RegisterBloc>(context)
                                              .add(RegisterEvent.selctRadio(
                                                  radioVlaue: radioValue));
                                        });
                                  },
                                )
                              ],
                            ),
                          ),
                        );
        }),
      ),
    );
  }
}

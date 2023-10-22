import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/colors.dart';
import 'package:weather_app/core/constants.dart';
import 'package:weather_app/dialog_box/exit_dialog_box.dart';
import 'package:weather_app/features/home/presentation/home/home_bloc.dart';
import 'package:weather_app/features/home/presentation/widgets/additional_information_tab.dart';
import 'package:weather_app/features/home/presentation/widgets/current_weather.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        BlocProvider.of<HomeBloc>(context).add(FetchLocation());
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
          body: BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
            print('currentState in bloc : ${state}');
            if (state is HomeLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomeError) {
              if (state.message == 'No Internet Connection, Try Again') {
                return Center(
                  child: SizedBox(
                    width: screenWidth,
                    height: screenHeight,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(state.message.toString()),
                        kHeight10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                print('Refresh Button in HomeScreen Clicked');
                                BlocProvider.of<HomeBloc>(context)
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
                                      'Refresh',
                                      style: TextStyle(),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return Center(
                  child: Text(state.message.toString()),
                );
              }
            } else if (state is HomeLoaded) {
              return SingleChildScrollView(
                child: Container(
                  width: screenWidth,
                  height: screenHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/image_blue.jpeg'
                            // state.weatherDataModel.current?.condition?.icon ?? ''
                            )),
                  ),
                  child: Column(
                    children: [
                      kHeight10,
                      CurrentWeather(
                        currentCity: state.weatherDataModel.location?.name ??
                            'Not Available',
                        currentTemperature:
                            "${state.weatherDataModel.current?.tempC ?? ''}c",
                        weatherImage: state
                                .weatherDataModel.current?.condition?.icon
                                ?.toString() ??
                            '',
                        weatherCondition:
                            state.weatherDataModel.current?.condition?.text ??
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
                            '${state.weatherDataModel.current?.feelslikeC.toString() ?? ''}C',
                        humidityValue: state.weatherDataModel.current?.humidity
                                .toString() ??
                            'Not Available',
                        lattitudeValue:
                            state.weatherDataModel.location?.lat.toString() ??
                                'Not Available',
                        longitudeValue:
                            state.weatherDataModel.location?.lon.toString() ??
                                'Not Available',
                        presureValue:
                            " ${state.weatherDataModel.current?.precipIn?.toString() ?? ''}In",
                        windValue:
                            "${state.weatherDataModel.current?.windKph?.toString() ?? ''}Kph",
                      ),
                      //   kHeight10,

                      kHeight10,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              print('Refresh Button in HomeScreen Clicked');
                              BlocProvider.of<HomeBloc>(context)
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
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '${state.weatherDataModel.current?.lastUpdated ?? ''}',
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            } else {
              return const Center(child: Text('Error Occured , Try Again'));
            }
          })),
    );
  }
}

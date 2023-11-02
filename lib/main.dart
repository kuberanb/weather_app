import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/dependency%20injection/di.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';
import 'package:weather_app/features/home/domain/use%20cases/home_use_case.dart';
import 'package:weather_app/features/home/presentation/screens/home_screen.dart';
import 'package:weather_app/features/home/presentation/screens/register/bloc/register_bloc.dart';
import 'package:weather_app/features/home/presentation/weather_bloc/bloc/weather_bloc_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();

  runApp(MultiBlocProvider(providers: [
    BlocProvider(
        create: ((context) => WeatherBlocBloc(getIt<WeatherDataUseCase>()))),
    BlocProvider(create: ((context) => RegisterBloc()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

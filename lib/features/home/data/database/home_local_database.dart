import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:weather_app/features/home/data/models/weather_data_model.dart';

abstract class HomeLocalDatabase {
  Future<void> storeHomeData(WeatherDataModel weatherDataModel);
  Future<WeatherDataModel?> getHomeData();
  Future<bool> isWeatherDataTableAvailable();
}

class HomeLocalDatabaseImpl implements HomeLocalDatabase {
  Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final path = join(await getDatabasesPath(), 'weather_data.db');
    return openDatabase(path, version: 1, onCreate: _createTables);
  }

  Future<void> _createTables(Database db, int version) async {
    await db.execute('DROP TABLE IF EXISTS weather_data');

    await db.execute('''
      CREATE TABLE weather_data(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        data TEXT
      )
    ''');
  }

  @override
  Future<WeatherDataModel?> getHomeData() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('weather_data');
    print('local weather data fetched : ${maps}');
    if (maps.isNotEmpty) {
      return WeatherDataModel.fromJson(json.decode(maps.first['data']));
    }
    return null;
  }

  @override
  Future<void> storeHomeData(WeatherDataModel weatherDataModel) async {
    final db = await database;
    await db.insert(
      'weather_data',
      {
        'data': json.encode(weatherDataModel.toJson()),
      },
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
    print("weather data inserted locally sucessfully");
  }

  @override
  Future<bool> isWeatherDataTableAvailable() async {
    final db = await database;
    final List<Map<String, dynamic>> tables = await db.rawQuery(
      "SELECT name FROM sqlite_master WHERE type='table' AND name='weather_data'",
    );
    Println("isWeatherDataTableAvailable : ${tables.isNotEmpty}");
    return tables.isNotEmpty;
  }
}

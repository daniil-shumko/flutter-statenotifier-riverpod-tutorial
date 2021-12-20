import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_statenotifier_tutorial/application/weather_notifier.dart';
import 'package:riverpod_statenotifier_tutorial/infrastructure/weather_repository.dart';

final weatherRepositoryProvider = Provider<WeatherRepository>(
  (ref) => FakeWeatherRepository(),
);

final weatherNotifierProvider =
    StateNotifierProvider<WeatherNotifier, WeatherState>(
  (ref) => WeatherNotifier(ref.watch(weatherRepositoryProvider)),
);

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reso_riverpod_intro/infrastructure/weather_repository.dart';

import 'application/weather_notifier.dart';

final weatherRepositoryProvider =
    Provider<WeatherRepository>((ref) => FakeWeatherRepository());

final weatherNotifierProvider = StateNotifierProvider(
  (ref) => WeatherNotifier(
    ref.watch(weatherRepositoryProvider),
  ),
);

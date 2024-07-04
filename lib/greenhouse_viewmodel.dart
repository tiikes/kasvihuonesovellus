import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kasvihuonesovellus/models/greenhouse_data.dart';

final greenhouseViewModelProvider =
    StateNotifierProvider<GreenhouseViewModel, GreenhouseData>(
  (ref) => GreenhouseViewModel(),
);

class GreenhouseViewModel extends StateNotifier<GreenhouseData> {
  GreenhouseViewModel()
      : super(GreenhouseData(temperature: 0.0, humidity: 0.0));

  void updateTemperature(double newTemperature) {
    state =
        GreenhouseData(temperature: newTemperature, humidity: state.humidity);
  }

  void updateHumidity(double newHumidity) {
    state =
        GreenhouseData(temperature: state.temperature, humidity: newHumidity);
  }
}

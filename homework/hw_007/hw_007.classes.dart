import 'hw_007.interfaces.dart';
import 'hw_007.mixins.dart';

abstract class Device implements Switchable {
  final String name;

  Device(this.name);

  void showInfo() {
    print('Device: $name');
  }
}

class SmartLamp extends Device with BatteryPowered implements Adjustable {
  int brightness;

  SmartLamp(super.name, this.brightness) {
    brightness = brightness.clamp(0, 100);
  }

  @override
  void turnOn() {
    print('Lamp $name is ON');
  }

  @override
  void turnOff() {
    print('Lamp $name is OFF');
  }

  @override
  void increase() {
    brightness = (brightness + 10).clamp(0, 100);
    print('$name brightness +10 -- $brightness%');
  }

  @override
  void decrease() {
    brightness = (brightness - 10).clamp(0, 100);
    print('$name brightness -10 -- $brightness%');
  }

  void showInfo() {
    print('Lamp: $name, Brightness: $brightness%');
  }
}

class SmartSpeaker extends Device with BatteryPowered implements Adjustable {
  int volume;

  SmartSpeaker(super.name, this.volume) {
    volume = volume.clamp(0, 100);
  }
  @override
  void turnOn() {
    print('Speaker $name is ON');
  }

  @override
  void turnOff() {
    print('Speaker $name is OFF');
  }

  @override
  void increase() {
    volume = (volume + 5).clamp(0, 100);
    print('$name volume + 5');
  }

  @override
  void decrease() {
    volume = (volume - 5).clamp(0, 100);
    print('$name volume - 5');
  }

  void showInfo() {
    print('Speaker: $name, Volume: $volume%');
  }
}

class SmartThermostat extends Device {
  int temp = 22;

  SmartThermostat(super.name, this.temp);

  @override
  void turnOn() {
    print('Thermostat $name is ON');
  }

  @override
  void turnOff() {
    print('Thermostat $name is OFF');
  }

  void showInfo() {
    print('Thermostat: $name, Temperature: $temp C');
  }
}

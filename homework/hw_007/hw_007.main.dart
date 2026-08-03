import 'hw_007.classes.dart';
import 'hw_007.interfaces.dart';
import 'hw_007.mixins.dart';

void main() {
  List<Device> devices = [
    SmartLamp('Philips', 50),
    SmartSpeaker('Pioneer', 55),
    SmartThermostat('Google Nest', 22),
  ];

  for (var device in devices) {
    device.showInfo();
    device.turnOn();

    if (device is Adjustable) {
      (device as Adjustable).increase();
    }
    if (device is BatteryPowered) {
      (device as BatteryPowered).showBattery();
    }
  }
  print('---------------------');
  print('All devices processed');
}

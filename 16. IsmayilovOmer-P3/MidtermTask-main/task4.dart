mixin Logger {
  void logMessage(String message) {
    print("Log Message: $message");
  }
}

class Server with Logger {
  // Connects 2 devices
  void connectTwoDevices(Device device1, Device device2) {
    if (isAvailable(device1) && isAvailable(device2)) {
      logMessage(
          "Method[connectTwoDevices] - Connection established succesfully.");
      return;
    }
    logMessage("Method[connectTwoDevices] - Connection failed.");
  }

  // Ensures availabilty of devices
  bool isAvailable(Device device) {
    if (device.connectionStatus && device.state) return true;
    return false;
  }
}

class Device {
  bool _connectionStatus;
  bool _state;

  Device(this._connectionStatus, this._state);

  bool get connectionStatus => _connectionStatus;
  bool get state => _state;
}

void main() {
  Device device1 = Device(true, true);
  Device device2 = Device(true, true);

  Server server = Server();
  server.connectTwoDevices(device1, device2);
}

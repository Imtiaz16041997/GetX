class LoginRequestModel {
  final String userName;
  final String password;
  final String imeiOrIP;
  final String deviceType;
  final String deviceToken;
  final String otp;
  final String tpin;

  LoginRequestModel({
    required this.userName,
    required this.password,
    this.imeiOrIP = 'MOB-11111',
    this.deviceType = '',
    this.deviceToken = '',
    this.otp = '',
    this.tpin = '',
  });

  Map<String, String> toJson() {
    return {
      'UserName': userName,
      'Password': password,
      'ImeiOrIP': imeiOrIP,
      'DeviceType': deviceType,
      'DeviceToken': deviceToken,
      'OTP': otp,
      'TPIN': tpin,
    };
  }
}

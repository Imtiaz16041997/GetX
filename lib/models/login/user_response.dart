/// Status : "OK"
/// Message : "Successfully logged in"
/// Result : {"access_token":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiJwNVJHa1dOVDRiaEVPTE1IWXA5MktlMURlN2QyUWJuQ0VQK1pHeUY5UVBZPW1kbHdzd0oweEJJdnJYRnBRZzFmVlE9PSIsIlNlc3Npb25JRCI6Iko4aWx2OElzdnRTY3lhaWNFREhQYSt0TVlwT0JrY3U3djk2ekFaYmJPMjA9QmRhUnVwV3hWWXdxa0djTFVkdUVzNVBuZ3Jzako2YTkwRVg1WFZQcElpTklPMXVLdXl1NHBNblRzTWlkcWxZbSs1RFFYWlhYTXdaWlBNTnFxYytvUzduZFZyQWNaclNjTitaSk93bUVaMEk9IiwiU3RhcnREYXRlIjoiNC8xNS8yMDI1IDc6MzI6MDUgUE0iLCJFeHBpcnlEYXRlIjoiNC8xNS8yMDI1IDg6MzI6MDUgUE0iLCJleHAiOjE3NDQ3Mjc1MjUsImlzcyI6IklCX01PQl9VTklGSUNBVElPTiIsImF1ZCI6IklCX01PQl9VTklGSUNBVElPTiJ9.igFYHWTjaQtuKv1arU4w4UD_n47hYz_SDXIToyPAR4g","token_type":"Bearer","expires_in":3600000,"userName":"0000000533","issued":"4/15/2025 7:32:05 PM","expires":"4/15/2025 8:32:05 PM","customerId":"0000000533","branchId":"1001","deviceIMEI":"10.130.124.2","fullName":"NIGER SULTANA","isFirstLogin":false,"auth2FAProvider":"OTP","isquesEnable":false,"customerTypeID":"1","customerTypeNM":"Individual","isTPINMendatory":false}

class UserResponse {
  String? _status;
  String? _message;
  Result? _result;

  UserResponse({String? status, String? message, Result? result}) {
    if (status != null) {
      this._status = status;
    }
    if (message != null) {
      this._message = message;
    }
    if (result != null) {
      this._result = result;
    }
  }

  String? get status => _status;
  set status(String? status) => _status = status;
  String? get message => _message;
  set message(String? message) => _message = message;
  Result? get result => _result;
  set result(Result? result) => _result = result;

  UserResponse.fromJson(Map<String, dynamic> json) {
    _status = json['Status'];
    _message = json['Message'];
    _result =
    json['Result'] != null ? new Result.fromJson(json['Result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this._status;
    data['Message'] = this._message;
    if (this._result != null) {
      data['Result'] = this._result!.toJson();
    }
    return data;
  }
}

class Result {
  String? _accessToken;
  String? _tokenType;
  int? _expiresIn;
  String? _userName;
  String? _issued;
  String? _expires;
  String? _customerId;
  String? _branchId;
  String? _deviceIMEI;
  String? _fullName;
  bool? _isFirstLogin;
  String? _auth2FAProvider;
  bool? _isquesEnable;
  String? _customerTypeID;
  String? _customerTypeNM;
  bool? _isTPINMendatory;

  Result(
      {String? accessToken,
        String? tokenType,
        int? expiresIn,
        String? userName,
        String? issued,
        String? expires,
        String? customerId,
        String? branchId,
        String? deviceIMEI,
        String? fullName,
        bool? isFirstLogin,
        String? auth2FAProvider,
        bool? isquesEnable,
        String? customerTypeID,
        String? customerTypeNM,
        bool? isTPINMendatory}) {
    if (accessToken != null) {
      this._accessToken = accessToken;
    }
    if (tokenType != null) {
      this._tokenType = tokenType;
    }
    if (expiresIn != null) {
      this._expiresIn = expiresIn;
    }
    if (userName != null) {
      this._userName = userName;
    }
    if (issued != null) {
      this._issued = issued;
    }
    if (expires != null) {
      this._expires = expires;
    }
    if (customerId != null) {
      this._customerId = customerId;
    }
    if (branchId != null) {
      this._branchId = branchId;
    }
    if (deviceIMEI != null) {
      this._deviceIMEI = deviceIMEI;
    }
    if (fullName != null) {
      this._fullName = fullName;
    }
    if (isFirstLogin != null) {
      this._isFirstLogin = isFirstLogin;
    }
    if (auth2FAProvider != null) {
      this._auth2FAProvider = auth2FAProvider;
    }
    if (isquesEnable != null) {
      this._isquesEnable = isquesEnable;
    }
    if (customerTypeID != null) {
      this._customerTypeID = customerTypeID;
    }
    if (customerTypeNM != null) {
      this._customerTypeNM = customerTypeNM;
    }
    if (isTPINMendatory != null) {
      this._isTPINMendatory = isTPINMendatory;
    }
  }

  String? get accessToken => _accessToken;
  set accessToken(String? accessToken) => _accessToken = accessToken;
  String? get tokenType => _tokenType;
  set tokenType(String? tokenType) => _tokenType = tokenType;
  int? get expiresIn => _expiresIn;
  set expiresIn(int? expiresIn) => _expiresIn = expiresIn;
  String? get userName => _userName;
  set userName(String? userName) => _userName = userName;
  String? get issued => _issued;
  set issued(String? issued) => _issued = issued;
  String? get expires => _expires;
  set expires(String? expires) => _expires = expires;
  String? get customerId => _customerId;
  set customerId(String? customerId) => _customerId = customerId;
  String? get branchId => _branchId;
  set branchId(String? branchId) => _branchId = branchId;
  String? get deviceIMEI => _deviceIMEI;
  set deviceIMEI(String? deviceIMEI) => _deviceIMEI = deviceIMEI;
  String? get fullName => _fullName;
  set fullName(String? fullName) => _fullName = fullName;
  bool? get isFirstLogin => _isFirstLogin;
  set isFirstLogin(bool? isFirstLogin) => _isFirstLogin = isFirstLogin;
  String? get auth2FAProvider => _auth2FAProvider;
  set auth2FAProvider(String? auth2FAProvider) =>
      _auth2FAProvider = auth2FAProvider;
  bool? get isquesEnable => _isquesEnable;
  set isquesEnable(bool? isquesEnable) => _isquesEnable = isquesEnable;
  String? get customerTypeID => _customerTypeID;
  set customerTypeID(String? customerTypeID) =>
      _customerTypeID = customerTypeID;
  String? get customerTypeNM => _customerTypeNM;
  set customerTypeNM(String? customerTypeNM) =>
      _customerTypeNM = customerTypeNM;
  bool? get isTPINMendatory => _isTPINMendatory;
  set isTPINMendatory(bool? isTPINMendatory) =>
      _isTPINMendatory = isTPINMendatory;

  Result.fromJson(Map<String, dynamic> json) {
    _accessToken = json['access_token'];
    _tokenType = json['token_type'];
    _expiresIn = json['expires_in'];
    _userName = json['userName'];
    _issued = json['issued'];
    _expires = json['expires'];
    _customerId = json['customerId'];
    _branchId = json['branchId'];
    _deviceIMEI = json['deviceIMEI'];
    _fullName = json['fullName'];
    _isFirstLogin = json['isFirstLogin'];
    _auth2FAProvider = json['auth2FAProvider'];
    _isquesEnable = json['isquesEnable'];
    _customerTypeID = json['customerTypeID'];
    _customerTypeNM = json['customerTypeNM'];
    _isTPINMendatory = json['isTPINMendatory'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['access_token'] = this._accessToken;
    data['token_type'] = this._tokenType;
    data['expires_in'] = this._expiresIn;
    data['userName'] = this._userName;
    data['issued'] = this._issued;
    data['expires'] = this._expires;
    data['customerId'] = this._customerId;
    data['branchId'] = this._branchId;
    data['deviceIMEI'] = this._deviceIMEI;
    data['fullName'] = this._fullName;
    data['isFirstLogin'] = this._isFirstLogin;
    data['auth2FAProvider'] = this._auth2FAProvider;
    data['isquesEnable'] = this._isquesEnable;
    data['customerTypeID'] = this._customerTypeID;
    data['customerTypeNM'] = this._customerTypeNM;
    data['isTPINMendatory'] = this._isTPINMendatory;
    return data;
  }
}
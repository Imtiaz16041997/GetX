class AccountListWithBalance {
  String? _status;
  String? _message;
  List<Result>? _result;

  AccountListWithBalance(
      {String? status, String? message, List<Result>? result}) {
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
  List<Result>? get result => _result;
  set result(List<Result>? result) => _result = result;

  AccountListWithBalance.fromJson(Map<String, dynamic> json) {
    _status = json['Status'];
    _message = json['Message'];
    if (json['Result'] != null) {
      _result = <Result>[];
      json['Result'].forEach((v) {
        _result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this._status;
    data['Message'] = this._message;
    if (this._result != null) {
      data['Result'] = this._result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? _producTID;
  String? _producTNM;
  String? _producTTYPE;
  String? _brancHID;
  String? _brancHNM;
  String? _accounTNUMBER;
  String? _accounTTITLE;
  String? _accounTSTATUS;
  String? _opeNDT;
  String? _lasTTRNDT;
  String? _outstandinGBAL;
  String? _outstandinGBALLCY;
  String? _appLTYPE;
  String? _apPSLNO;
  String? _applicatioNNAME;
  String? _sanctioNDT;
  String? _disbursEDT;
  String? _maturitYDT;
  String? _acCRENEWALDT;
  String? _expirYDT;
  String? _currencYNM;
  String? _currenTBALANCE;
  String? _clearinGAMT;
  String? _blockeDAMOUNT;
  String? _holDAMOUNT;
  String? _lieNAMOUNT;
  String? _pendinGDR;
  String? _pendinGCR;
  String? _availablEBALANCE;
  String? _miNBALANCE;

  Result(
      {String? producTID,
        String? producTNM,
        String? producTTYPE,
        String? brancHID,
        String? brancHNM,
        String? accounTNUMBER,
        String? accounTTITLE,
        String? accounTSTATUS,
        String? opeNDT,
        String? lasTTRNDT,
        String? outstandinGBAL,
        String? outstandinGBALLCY,
        String? appLTYPE,
        String? apPSLNO,
        String? applicatioNNAME,
        String? sanctioNDT,
        String? disbursEDT,
        String? maturitYDT,
        String? acCRENEWALDT,
        String? expirYDT,
        String? currencYNM,
        String? currenTBALANCE,
        String? clearinGAMT,
        String? blockeDAMOUNT,
        String? holDAMOUNT,
        String? lieNAMOUNT,
        String? pendinGDR,
        String? pendinGCR,
        String? availablEBALANCE,
        String? miNBALANCE}) {
    if (producTID != null) {
      this._producTID = producTID;
    }
    if (producTNM != null) {
      this._producTNM = producTNM;
    }
    if (producTTYPE != null) {
      this._producTTYPE = producTTYPE;
    }
    if (brancHID != null) {
      this._brancHID = brancHID;
    }
    if (brancHNM != null) {
      this._brancHNM = brancHNM;
    }
    if (accounTNUMBER != null) {
      this._accounTNUMBER = accounTNUMBER;
    }
    if (accounTTITLE != null) {
      this._accounTTITLE = accounTTITLE;
    }
    if (accounTSTATUS != null) {
      this._accounTSTATUS = accounTSTATUS;
    }
    if (opeNDT != null) {
      this._opeNDT = opeNDT;
    }
    if (lasTTRNDT != null) {
      this._lasTTRNDT = lasTTRNDT;
    }
    if (outstandinGBAL != null) {
      this._outstandinGBAL = outstandinGBAL;
    }
    if (outstandinGBALLCY != null) {
      this._outstandinGBALLCY = outstandinGBALLCY;
    }
    if (appLTYPE != null) {
      this._appLTYPE = appLTYPE;
    }
    if (apPSLNO != null) {
      this._apPSLNO = apPSLNO;
    }
    if (applicatioNNAME != null) {
      this._applicatioNNAME = applicatioNNAME;
    }
    if (sanctioNDT != null) {
      this._sanctioNDT = sanctioNDT;
    }
    if (disbursEDT != null) {
      this._disbursEDT = disbursEDT;
    }
    if (maturitYDT != null) {
      this._maturitYDT = maturitYDT;
    }
    if (acCRENEWALDT != null) {
      this._acCRENEWALDT = acCRENEWALDT;
    }
    if (expirYDT != null) {
      this._expirYDT = expirYDT;
    }
    if (currencYNM != null) {
      this._currencYNM = currencYNM;
    }
    if (currenTBALANCE != null) {
      this._currenTBALANCE = currenTBALANCE;
    }
    if (clearinGAMT != null) {
      this._clearinGAMT = clearinGAMT;
    }
    if (blockeDAMOUNT != null) {
      this._blockeDAMOUNT = blockeDAMOUNT;
    }
    if (holDAMOUNT != null) {
      this._holDAMOUNT = holDAMOUNT;
    }
    if (lieNAMOUNT != null) {
      this._lieNAMOUNT = lieNAMOUNT;
    }
    if (pendinGDR != null) {
      this._pendinGDR = pendinGDR;
    }
    if (pendinGCR != null) {
      this._pendinGCR = pendinGCR;
    }
    if (availablEBALANCE != null) {
      this._availablEBALANCE = availablEBALANCE;
    }
    if (miNBALANCE != null) {
      this._miNBALANCE = miNBALANCE;
    }
  }

  String? get producTID => _producTID;
  set producTID(String? producTID) => _producTID = producTID;
  String? get producTNM => _producTNM;
  set producTNM(String? producTNM) => _producTNM = producTNM;
  String? get producTTYPE => _producTTYPE;
  set producTTYPE(String? producTTYPE) => _producTTYPE = producTTYPE;
  String? get brancHID => _brancHID;
  set brancHID(String? brancHID) => _brancHID = brancHID;
  String? get brancHNM => _brancHNM;
  set brancHNM(String? brancHNM) => _brancHNM = brancHNM;
  String? get accounTNUMBER => _accounTNUMBER;
  set accounTNUMBER(String? accounTNUMBER) => _accounTNUMBER = accounTNUMBER;
  String? get accounTTITLE => _accounTTITLE;
  set accounTTITLE(String? accounTTITLE) => _accounTTITLE = accounTTITLE;
  String? get accounTSTATUS => _accounTSTATUS;
  set accounTSTATUS(String? accounTSTATUS) => _accounTSTATUS = accounTSTATUS;
  String? get opeNDT => _opeNDT;
  set opeNDT(String? opeNDT) => _opeNDT = opeNDT;
  String? get lasTTRNDT => _lasTTRNDT;
  set lasTTRNDT(String? lasTTRNDT) => _lasTTRNDT = lasTTRNDT;
  String? get outstandinGBAL => _outstandinGBAL;
  set outstandinGBAL(String? outstandinGBAL) =>
      _outstandinGBAL = outstandinGBAL;
  String? get outstandinGBALLCY => _outstandinGBALLCY;
  set outstandinGBALLCY(String? outstandinGBALLCY) =>
      _outstandinGBALLCY = outstandinGBALLCY;
  String? get appLTYPE => _appLTYPE;
  set appLTYPE(String? appLTYPE) => _appLTYPE = appLTYPE;
  String? get apPSLNO => _apPSLNO;
  set apPSLNO(String? apPSLNO) => _apPSLNO = apPSLNO;
  String? get applicatioNNAME => _applicatioNNAME;
  set applicatioNNAME(String? applicatioNNAME) =>
      _applicatioNNAME = applicatioNNAME;
  String? get sanctioNDT => _sanctioNDT;
  set sanctioNDT(String? sanctioNDT) => _sanctioNDT = sanctioNDT;
  String? get disbursEDT => _disbursEDT;
  set disbursEDT(String? disbursEDT) => _disbursEDT = disbursEDT;
  String? get maturitYDT => _maturitYDT;
  set maturitYDT(String? maturitYDT) => _maturitYDT = maturitYDT;
  String? get acCRENEWALDT => _acCRENEWALDT;
  set acCRENEWALDT(String? acCRENEWALDT) => _acCRENEWALDT = acCRENEWALDT;
  String? get expirYDT => _expirYDT;
  set expirYDT(String? expirYDT) => _expirYDT = expirYDT;
  String? get currencYNM => _currencYNM;
  set currencYNM(String? currencYNM) => _currencYNM = currencYNM;
  String? get currenTBALANCE => _currenTBALANCE;
  set currenTBALANCE(String? currenTBALANCE) =>
      _currenTBALANCE = currenTBALANCE;
  String? get clearinGAMT => _clearinGAMT;
  set clearinGAMT(String? clearinGAMT) => _clearinGAMT = clearinGAMT;
  String? get blockeDAMOUNT => _blockeDAMOUNT;
  set blockeDAMOUNT(String? blockeDAMOUNT) => _blockeDAMOUNT = blockeDAMOUNT;
  String? get holDAMOUNT => _holDAMOUNT;
  set holDAMOUNT(String? holDAMOUNT) => _holDAMOUNT = holDAMOUNT;
  String? get lieNAMOUNT => _lieNAMOUNT;
  set lieNAMOUNT(String? lieNAMOUNT) => _lieNAMOUNT = lieNAMOUNT;
  String? get pendinGDR => _pendinGDR;
  set pendinGDR(String? pendinGDR) => _pendinGDR = pendinGDR;
  String? get pendinGCR => _pendinGCR;
  set pendinGCR(String? pendinGCR) => _pendinGCR = pendinGCR;
  String? get availablEBALANCE => _availablEBALANCE;
  set availablEBALANCE(String? availablEBALANCE) =>
      _availablEBALANCE = availablEBALANCE;
  String? get miNBALANCE => _miNBALANCE;
  set miNBALANCE(String? miNBALANCE) => _miNBALANCE = miNBALANCE;

  Result.fromJson(Map<String, dynamic> json) {
    _producTID = json['producT_ID'];
    _producTNM = json['producT_NM'];
    _producTTYPE = json['producT_TYPE'];
    _brancHID = json['brancH_ID'];
    _brancHNM = json['brancH_NM'];
    _accounTNUMBER = json['accounT_NUMBER'];
    _accounTTITLE = json['accounT_TITLE'];
    _accounTSTATUS = json['accounT_STATUS'];
    _opeNDT = json['opeN_DT'];
    _lasTTRNDT = json['lasT_TRN_DT'];
    _outstandinGBAL = json['outstandinG_BAL'];
    _outstandinGBALLCY = json['outstandinG_BAL_LCY'];
    _appLTYPE = json['appL_TYPE'];
    _apPSLNO = json['apP_SL_NO'];
    _applicatioNNAME = json['applicatioN_NAME'];
    _sanctioNDT = json['sanctioN_DT'];
    _disbursEDT = json['disbursE_DT'];
    _maturitYDT = json['maturitY_DT'];
    _acCRENEWALDT = json['acC_RENEWAL_DT'];
    _expirYDT = json['expirY_DT'];
    _currencYNM = json['currencY_NM'];
    _currenTBALANCE = json['currenT_BALANCE'];
    _clearinGAMT = json['clearinG_AMT'];
    _blockeDAMOUNT = json['blockeD_AMOUNT'];
    _holDAMOUNT = json['holD_AMOUNT'];
    _lieNAMOUNT = json['lieN_AMOUNT'];
    _pendinGDR = json['pendinG_DR'];
    _pendinGCR = json['pendinG_CR'];
    _availablEBALANCE = json['availablE_BALANCE'];
    _miNBALANCE = json['miN_BALANCE'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['producT_ID'] = this._producTID;
    data['producT_NM'] = this._producTNM;
    data['producT_TYPE'] = this._producTTYPE;
    data['brancH_ID'] = this._brancHID;
    data['brancH_NM'] = this._brancHNM;
    data['accounT_NUMBER'] = this._accounTNUMBER;
    data['accounT_TITLE'] = this._accounTTITLE;
    data['accounT_STATUS'] = this._accounTSTATUS;
    data['opeN_DT'] = this._opeNDT;
    data['lasT_TRN_DT'] = this._lasTTRNDT;
    data['outstandinG_BAL'] = this._outstandinGBAL;
    data['outstandinG_BAL_LCY'] = this._outstandinGBALLCY;
    data['appL_TYPE'] = this._appLTYPE;
    data['apP_SL_NO'] = this._apPSLNO;
    data['applicatioN_NAME'] = this._applicatioNNAME;
    data['sanctioN_DT'] = this._sanctioNDT;
    data['disbursE_DT'] = this._disbursEDT;
    data['maturitY_DT'] = this._maturitYDT;
    data['acC_RENEWAL_DT'] = this._acCRENEWALDT;
    data['expirY_DT'] = this._expirYDT;
    data['currencY_NM'] = this._currencYNM;
    data['currenT_BALANCE'] = this._currenTBALANCE;
    data['clearinG_AMT'] = this._clearinGAMT;
    data['blockeD_AMOUNT'] = this._blockeDAMOUNT;
    data['holD_AMOUNT'] = this._holDAMOUNT;
    data['lieN_AMOUNT'] = this._lieNAMOUNT;
    data['pendinG_DR'] = this._pendinGDR;
    data['pendinG_CR'] = this._pendinGCR;
    data['availablE_BALANCE'] = this._availablEBALANCE;
    data['miN_BALANCE'] = this._miNBALANCE;
    return data;
  }
}
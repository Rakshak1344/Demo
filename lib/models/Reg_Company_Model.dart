class RegisterCompany {
  String _gstin;
  String _companyName;
  String _managerName;
  String _managerGender;
  String _companyArea;
  String _companyStreet;
  int _companyPostalCode;
  int _companyPhno;
  String _comapnyEmail;
  int _companyPassword;
  int _id;

  RegisterCompany(
      {String gstin,
      String companyName,
      String managerName,
      String managerGender,
      String companyArea,
      String companyStreet,
      int companyPostalCode,
      int companyPhno,
      String comapnyEmail,
      int companyPassword,
      int id}) {
    this._gstin = gstin;
    this._companyName = companyName;
    this._managerName = managerName;
    this._managerGender = managerGender;
    this._companyArea = companyArea;
    this._companyStreet = companyStreet;
    this._companyPostalCode = companyPostalCode;
    this._companyPhno = companyPhno;
    this._comapnyEmail = comapnyEmail;
    this._companyPassword = companyPassword;
    this._id = id;
  }

  String get gstin => _gstin;
  set gstin(String gstin) => _gstin = gstin;
  String get companyName => _companyName;
  set companyName(String companyName) => _companyName = companyName;
  String get managerName => _managerName;
  set managerName(String managerName) => _managerName = managerName;
  String get managerGender => _managerGender;
  set managerGender(String managerGender) => _managerGender = managerGender;
  String get companyArea => _companyArea;
  set companyArea(String companyArea) => _companyArea = companyArea;
  String get companyStreet => _companyStreet;
  set companyStreet(String companyStreet) => _companyStreet = companyStreet;
  int get companyPostalCode => _companyPostalCode;
  set companyPostalCode(int companyPostalCode) =>
      _companyPostalCode = companyPostalCode;
  int get companyPhno => _companyPhno;
  set companyPhno(int companyPhno) => _companyPhno = companyPhno;
  String get comapnyEmail => _comapnyEmail;
  set comapnyEmail(String comapnyEmail) => _comapnyEmail = comapnyEmail;
  int get companyPassword => _companyPassword;
  set companyPassword(int companyPassword) =>
      _companyPassword = companyPassword;
  int get id => _id;
  set id(int id) => _id = id;

  RegisterCompany.fromJson(Map<String, dynamic> json) {
    _gstin = json['gstin'];
    _companyName = json['company-name'];
    _managerName = json['manager-name'];
    _managerGender = json['manager-gender'];
    _companyArea = json['company-area'];
    _companyStreet = json['company-street'];
    _companyPostalCode = json['company-postal-code'];
    _companyPhno = json['company-phno'];
    _comapnyEmail = json['comapny-email'];
    _companyPassword = json['company-password'];
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['gstin'] = this._gstin;
    data['company-name'] = this._companyName;
    data['manager-name'] = this._managerName;
    data['manager-gender'] = this._managerGender;
    data['company-area'] = this._companyArea;
    data['company-street'] = this._companyStreet;
    data['company-postal-code'] = this._companyPostalCode;
    data['company-phno'] = this._companyPhno;
    data['comapny-email'] = this._comapnyEmail;
    data['company-password'] = this._companyPassword;
    data['id'] = this._id;
    return data;
  }

  
}

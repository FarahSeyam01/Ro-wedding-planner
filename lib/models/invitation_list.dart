class InvitationModel {
  String? invit1;
  String? invit2;
  String? invit3;
  String? invit4;
  String? invit5;
  String? invit6;
  String? invit7;
  String? invit8;
  String? invit9;
  String? invit10;
  String? invit11;
  String? invit12;
  String? invit13;

  InvitationModel({
    this.invit1,
    this.invit2,
    this.invit3,
    this.invit4,
    this.invit5,
    this.invit6,
    this.invit7,
    this.invit8,
    this.invit9,
    this.invit10,
    this.invit11,
    this.invit12,
    this.invit13,
  });
  Map<String, dynamic> toJson() => {
        'Invitation 1': invit1,
        'Invitation 2': invit2,
        'Invitation 3': invit3,
        'Invitation 4': invit4,
        'Invitation 5': invit5,
        'Invitation 6': invit6,
        'Invitation 7': invit7,
        'Invitation 8': invit8,
        'Invitation 9': invit9,
        'Invitation 10': invit10,
        'Invitation 11': invit11,
        'Invitation 12': invit12,
        'Invitation 13': invit13,
      };

  factory InvitationModel.fromMap(Map<String, dynamic> json) => InvitationModel(
        invit1: json['Invitation 1'] == null ? null : json['Invitation 1'],
        invit2: json['Invitation 2'] == null ? null : json['Invitation 2'],
        invit3: json['Invitation 3'] == null ? null : json['Invitation 3'],
        invit4: json['Invitation 4'] == null ? null : json['Invitation 4'],
        invit5: json['Invitation 5'] == null ? null : json['Invitation 5'],
        invit6: json['Invitation 6'] == null ? null : json['Invitation 6'],
        invit7: json['Invitation 7'] == null ? null : json['Invitation 7'],
        invit8: json['Invitation 8'] == null ? null : json['Invitation 8'],
        invit9: json['Invitation 9'] == null ? null : json['Invitation 9'],
        invit10: json['Invitation 10'] == null ? null : json['Invitation 10'],
        invit11: json['Invitation 11'] == null ? null : json['Invitation 11'],
        invit12: json['Invitation 12'] == null ? null : json['Invitation 12'],
        invit13: json['Invitation 13'] == null ? null : json['Invitation 13'],
      );
}

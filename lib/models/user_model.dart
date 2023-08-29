
class UserModel{
  late final String? brideName;
 late final String? groomName;
 late final String? weddingDay;
  late final String? WeddingStyle;
  late final String? email;
  late final String? uid;
 UserModel({
  this.brideName,
  this.WeddingStyle,
  this.email,
  this.groomName,
  this.uid,
  this.weddingDay
 });
 Map<String, dynamic> toJson() => {
  'id':uid,
  'bride name' : brideName,
  'groom name' : groomName,
  'wedding day' : weddingDay,
  'wedding style' : WeddingStyle,                            
  'email' : email,
};

 factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    uid: json['id'] == null ? null :json['id'],
    brideName: json['bride name'] == null ? null :json['bride name'],
    groomName: json['groom name'] == null ? null :json['groom name'],
    WeddingStyle: json['wedding style'] == null ? null :json['wedding style'],
    weddingDay: json['wedding day'] == null ? null :json['wedding day'],
    email: json['email'] == null ? null :json['email'],
 );
}
 


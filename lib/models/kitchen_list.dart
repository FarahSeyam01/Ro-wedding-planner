class KitchenModel{
    bool? gran;
   bool? bi;
   bool? pot;
    bool? china;
    bool? stain;
    bool? dinner;
 KitchenModel({
  this.gran,
  this.bi,
  this.pot,
  this.china,
  this.stain,
  this.dinner
 });
 Map<String, dynamic> toJson() => {
  'الجرانيت':gran,
  'البيركس' : bi,
  'براد الشاي' : pot,
  'الصيني' : china,
  'طقم العشا' : dinner,                            
  'الستانليس' : stain,
};

 factory KitchenModel.fromMap(Map<String, dynamic> json) => KitchenModel(
    gran: json['الجرانيت'] == null ? null :json['الجرانيت'],
    bi: json['البيركس'] == null ? null :json['البيركس'],
    pot: json['براد الشاي'] == null ? null :json['براد الشاي'],
    china: json['الصيني'] == null ? null :json['الصيني'],
    dinner: json['طقم العشا'] == null ? null :json['طقم العشا'],
    stain: json['الستانليس'] == null ? null :json['الستانليس'],
 );
}
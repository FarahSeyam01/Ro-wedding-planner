class SongModel{
    String? song1;
    String? song2;
    String? song3;
    String? song4;
    String? song5;
    String? song6;
    String? song7;
    String? song8;
    String? song9;
    String? song10;
    String? song11;
    String? song12;
    String? song13;


 SongModel({
  this.song1,
  this.song2,
  this.song3,
  this.song4,
  this.song5,
  this.song6,
  this.song7,
  this.song8,
  this.song9,
  this.song10,
  this.song11,
  this.song12,
  this.song13,
 });
 Map<String, dynamic> toJson() => {
  'Song 1':song1,
  'Song 2' : song2,
  'Song 3' : song3,
  'Song 4' : song4,
  'Song 5' : song5,                            
  'Song 6' : song6,
  'Song 7' : song7,
  'Song 8' : song8,
  'Song 9' : song9,
  'Song 10' : song10,
  'Song 11' : song11,
  'Song 12' : song12,
  'Song 13' : song13,
};

 factory SongModel.fromMap(Map<String, dynamic> json) => SongModel(
    song1: json['Song 1'] == null ? null :json['Song 1'],
    song2: json['Song 2'] == null ? null :json['Song 2'],
    song3: json['Song 3'] == null ? null :json['Song 3'],
    song4: json['Song 4'] == null ? null :json['Song 4'],
    song5: json['Song 5'] == null ? null :json['Song 5'],
    song6: json['Song 6'] == null ? null :json['Song 6'],
    song7: json['Song 7'] == null ? null :json['Song 7'],
    song8: json['Song 8'] == null ? null :json['Song 8'],
    song9: json['Song 9'] == null ? null :json['Song 9'],
    song10: json['Song 10'] == null ? null :json['Song 10'],
    song11: json['Song 11'] == null ? null :json['Song 11'],
    song12: json['Song 12'] == null ? null :json['Song 12'],
    song13: json['Song 13'] == null ? null :json['Song 13'],

 );
}
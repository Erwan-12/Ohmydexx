class Pokemon {
  String? name;
  String? number;
  String? thumbnailImage;
  List<String>? type;
  List<String>? abilities;
  List<String>? weakness;
  num? height;
  num? weight;

  Pokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    number = json['number'];
    thumbnailImage = json['ThumbnaiImage'];
    type = List<String>.from(json['type']);
    abilities = List<String>.from(json['abilitie']);
    weakness = List<String>.from(json['weaknes']);
    height = json['height'];
    weight = json['weight'];
  }
}

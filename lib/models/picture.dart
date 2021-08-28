import 'dart:typed_data';

class Picture {
  Uint8List? image;

  Picture(this.image, {picture});

  Picture.fromMap(Map<String, dynamic> map) {
    this.image = map['image'];
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    map['image'] = image;
    return map;
  }
}

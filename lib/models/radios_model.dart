class RadioListModel {
  List<RadiosModel>? radios;

  RadioListModel({this.radios});

  RadioListModel.fromJson(Map<String, dynamic> json) {
    if (json['radios'] != null) {
      radios = <RadiosModel>[];
      json['radios'].forEach((v) {
        radios!.add(new RadiosModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.radios != null) {
      data['radios'] = this.radios!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class RadiosModel {
  int? id;
  String? name;
  String? url;
  String? recentDate;

  RadiosModel({this.id, this.name, this.url, this.recentDate});

  RadiosModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    url = json['url'];
    recentDate = json['recent_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['url'] = this.url;
    data['recent_date'] = this.recentDate;
    return data;
  }
}

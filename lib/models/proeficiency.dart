class ProficiencyChoices {
  int? choose;
  String? type;
  List<ProficiencyChoicesFrom?>? from;

  ProficiencyChoices({
    this.choose,
    this.type,
    this.from,
  });
  ProficiencyChoices.fromJson(Map<String, dynamic> json) {
    choose = json["choose"]?.toInt();
    type = json["type"]?.toString();
  if (json["from"] != null) {
  final v = json["from"];
  final arr0 = <ProficiencyChoicesFrom>[];
  v.forEach((v) {
  arr0.add(ProficiencyChoicesFrom.fromJson(v));
  });
    from = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["choose"] = choose;
    data["type"] = type;
    if (from != null) {
      final v = from;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["from"] = arr0;
    }
    return data;
  }
}

//---------------------------------------------------------------------------------------------------------------------------------------------------------

class ProficiencyChoicesFrom {
  String? index;
  String? name;
  String? url;

  ProficiencyChoicesFrom({
    this.index,
    this.name,
    this.url,
  });
  ProficiencyChoicesFrom.fromJson(Map<String, dynamic> json) {
    index = json["index"]?.toString();
    name = json["name"]?.toString();
    url = json["url"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["index"] = index;
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}

//-----------------------------------------------------------------------------------------------------------------------------------------------------

class Proficiencies {
  String? index;
  String? name;
  String? url;

  Proficiencies({
    this.index,
    this.name,
    this.url,
  });
  Proficiencies.fromJson(Map<String, dynamic> json) {
    index = json["index"]?.toString();
    name = json["name"]?.toString();
    url = json["url"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["index"] = index;
    data["name"] = name;
    data["url"] = url;
    return data;
  }
}
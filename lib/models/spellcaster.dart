class SpellcastingInfo {
  List<String?>? desc;
  String? name;

  SpellcastingInfo({
    this.desc,
    this.name,
  });
  SpellcastingInfo.fromJson(Map<String, dynamic> json) {
  if (json["desc"] != null) {
  final v = json["desc"];
  final arr0 = <String>[];
  v.forEach((v) {
  arr0.add(v.toString());
  });
    desc = arr0;
    }
    name = json["name"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (desc != null) {
      final v = desc;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v);
  });
      data["desc"] = arr0;
    }
    data["name"] = name;
    return data;
  }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class SpellcastingSpellcastingAbility {
  String? index;
  String? name;
  String? url;

  SpellcastingSpellcastingAbility({
    this.index,
    this.name,
    this.url,
  });
  SpellcastingSpellcastingAbility.fromJson(Map<String, dynamic> json) {
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

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class Spellcasting {
  int? level;
  SpellcastingSpellcastingAbility? spellcastingAbility;
  List<SpellcastingInfo?>? info;

  Spellcasting({
    this.level,
    this.spellcastingAbility,
    this.info,
  });
  Spellcasting.fromJson(Map<String, dynamic> json) {
    level = json["level"]?.toInt();
    spellcastingAbility = (json["spellcasting_ability"] != null) ? SpellcastingSpellcastingAbility.fromJson(json["spellcasting_ability"]) : null;
  if (json["info"] != null) {
  final v = json["info"];
  final arr0 = <SpellcastingInfo>[];
  v.forEach((v) {
  arr0.add(SpellcastingInfo.fromJson(v));
  });
    info = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["level"] = level;
    if (spellcastingAbility != null) {
      data["spellcasting_ability"] = spellcastingAbility!.toJson();
    }
    if (info != null) {
      final v = info;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["info"] = arr0;
    }
    return data;
  }
}
class MultiClassing {
  List<MultiClassingPrerequisites?>? prerequisites;
  List<MultiClassingProficiencies?>? proficiencies;

  MultiClassing({
    this.prerequisites,
    this.proficiencies,
  });
  MultiClassing.fromJson(Map<String, dynamic> json) {
  if (json["prerequisites"] != null) {
  final v = json["prerequisites"];
  final arr0 = <MultiClassingPrerequisites>[];
  v.forEach((v) {
  arr0.add(MultiClassingPrerequisites.fromJson(v));
  });
    prerequisites = arr0;
    }
  if (json["proficiencies"] != null) {
  final v = json["proficiencies"];
  final arr0 = <MultiClassingProficiencies>[];
  v.forEach((v) {
  arr0.add(MultiClassingProficiencies.fromJson(v));
  });
    proficiencies = arr0;
    }
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (prerequisites != null) {
      final v = prerequisites;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["prerequisites"] = arr0;
    }
    if (proficiencies != null) {
      final v = proficiencies;
      final arr0 = [];
  v!.forEach((v) {
  arr0.add(v!.toJson());
  });
      data["proficiencies"] = arr0;
    }
    return data;
  }
}

//------------------------------------------------------------------------------------------------------------------------------------------------------

class MultiClassingProficiencies {
  String? index;
  String? name;
  String? url;

  MultiClassingProficiencies({
    this.index,
    this.name,
    this.url,
  });
  MultiClassingProficiencies.fromJson(Map<String, dynamic> json) {
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

//---------------------------------------------------------------------------------------------------------------------------------------------------

class MultiClassingPrerequisitesAbilityScore {
  String? index;
  String? name;
  String? url;

  MultiClassingPrerequisitesAbilityScore({
    this.index,
    this.name,
    this.url,
  });
  MultiClassingPrerequisitesAbilityScore.fromJson(Map<String, dynamic> json) {
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

//-------------------------------------------------------------------------------------------------------------------------------------------------------

class MultiClassingPrerequisites {
  MultiClassingPrerequisitesAbilityScore? abilityScore;
  int? minimumScore;

  MultiClassingPrerequisites({
    this.abilityScore,
    this.minimumScore,
  });
  MultiClassingPrerequisites.fromJson(Map<String, dynamic> json) {
    abilityScore = (json["ability_score"] != null) ? MultiClassingPrerequisitesAbilityScore.fromJson(json["ability_score"]) : null;
    minimumScore = json["minimum_score"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (abilityScore != null) {
      data["ability_score"] = abilityScore!.toJson();
    }
    data["minimum_score"] = minimumScore;
    return data;
  }
}
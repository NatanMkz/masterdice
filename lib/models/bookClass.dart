import 'package:masterdice/models/proeficiency.dart';

import 'multClass.dart';
import 'spellcaster.dart';

class Subclasses {
  String? index;
  String? name;
  String? url;

  Subclasses({
    this.index,
    this.name,
    this.url,
  });
  Subclasses.fromJson(Map<String, dynamic> json) {
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

//----------------------------------------------------------------------------------------------------------------------------------------------------

class StartingEquipmentOptionsFromEquipment {
  String? index;
  String? name;
  String? url;

  StartingEquipmentOptionsFromEquipment({
    this.index,
    this.name,
    this.url,
  });
  StartingEquipmentOptionsFromEquipment.fromJson(Map<String, dynamic> json) {
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

class StartingEquipmentOptionsFrom {
  StartingEquipmentOptionsFromEquipment? equipment;
  int? quantity;

  StartingEquipmentOptionsFrom({
    this.equipment,
    this.quantity,
  });
  StartingEquipmentOptionsFrom.fromJson(Map<String, dynamic> json) {
    equipment = (json["equipment"] != null)
        ? StartingEquipmentOptionsFromEquipment.fromJson(json["equipment"])
        : null;
    quantity = json["quantity"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (equipment != null) {
      data["equipment"] = equipment!.toJson();
    }
    data["quantity"] = quantity;
    return data;
  }
}

class StartingEquipmentOptions {
  int? choose;
  String? type;
  List<StartingEquipmentOptionsFrom?>? from;

  StartingEquipmentOptions({
    this.choose,
    this.type,
    this.from,
  });
  StartingEquipmentOptions.fromJson(Map<String, dynamic> json) {
    choose = json["choose"]?.toInt();
    type = json["type"]?.toString();
    if (json["from"] != null) {
      final v = json["from"];
      final arr0 = <StartingEquipmentOptionsFrom>[];
      v.forEach((v) {
        arr0.add(StartingEquipmentOptionsFrom.fromJson(v));
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

class StartingEquipmentEquipment {
  String? index;
  String? name;
  String? url;

  StartingEquipmentEquipment({
    this.index,
    this.name,
    this.url,
  });
  StartingEquipmentEquipment.fromJson(Map<String, dynamic> json) {
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

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class StartingEquipment {
  StartingEquipmentEquipment? equipment;
  int? quantity;

  StartingEquipment({
    this.equipment,
    this.quantity,
  });
  StartingEquipment.fromJson(Map<String, dynamic> json) {
    equipment = (json["equipment"] != null)
        ? StartingEquipmentEquipment.fromJson(json["equipment"])
        : null;
    quantity = json["quantity"]?.toInt();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (equipment != null) {
      data["equipment"] = equipment!.toJson();
    }
    data["quantity"] = quantity;
    return data;
  }
}

class SavingThrows {
  String? index;
  String? name;
  String? url;

  SavingThrows({
    this.index,
    this.name,
    this.url,
  });
  SavingThrows.fromJson(Map<String, dynamic> json) {
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

class Classe {
  String? index;
  String? name;
  int? hitDie;
  List<ProficiencyChoices?>? proficiencyChoices;
  List<Proficiencies?>? proficiencies;
  List<SavingThrows?>? savingThrows;
  List<StartingEquipment?>? startingEquipment;
  List<StartingEquipmentOptions?>? startingEquipmentOptions;
  Spellcasting? spellcasting;
  String? spells;
  String? classLevels;
  MultiClassing? multiClassing;
  List<Subclasses?>? subclasses;
  String? url;

  Classe({
    this.index,
    this.name,
    this.hitDie,
    this.proficiencyChoices,
    this.proficiencies,
    this.savingThrows,
    this.startingEquipment,
    this.startingEquipmentOptions,
    this.spellcasting,
    this.spells,
    this.classLevels,
    this.multiClassing,
    this.subclasses,
    this.url,
  });
  Classe.fromJson(Map<String, dynamic> json) {
    index = json["index"]?.toString();
    name = json["name"]?.toString();
    hitDie = json["hit_die"]?.toInt();
    if (json["proficiency_choices"] != null) {
      final v = json["proficiency_choices"];
      final arr0 = <ProficiencyChoices>[];
      v.forEach((v) {
        arr0.add(ProficiencyChoices.fromJson(v));
      });
      proficiencyChoices = arr0;
    }
    if (json["proficiencies"] != null) {
      final v = json["proficiencies"];
      final arr0 = <Proficiencies>[];
      v.forEach((v) {
        arr0.add(Proficiencies.fromJson(v));
      });
      proficiencies = arr0;
    }
    if (json["saving_throws"] != null) {
      final v = json["saving_throws"];
      final arr0 = <SavingThrows>[];
      v.forEach((v) {
        arr0.add(SavingThrows.fromJson(v));
      });
      savingThrows = arr0;
    }
    if (json["starting_equipment"] != null) {
      final v = json["starting_equipment"];
      final arr0 = <StartingEquipment>[];
      v.forEach((v) {
        arr0.add(StartingEquipment.fromJson(v));
      });
      startingEquipment = arr0;
    }
    if (json["starting_equipment_options"] != null) {
      final v = json["starting_equipment_options"];
      final arr0 = <StartingEquipmentOptions>[];
      v.forEach((v) {
        arr0.add(StartingEquipmentOptions.fromJson(v));
      });
      startingEquipmentOptions = arr0;
    }

    spellcasting = (json["spellcasting"] != null)
        ? Spellcasting.fromJson(json["spellcasting"])
        : null;
    spells = json["spells"]?.toString();
    url = json["url"]?.toString();

    classLevels = json["class_levels"]?.toString();
    multiClassing = (json["multi_classing"] != null)
        ? MultiClassing.fromJson(json["multi_classing"])
        : null;
    if (json["subclasses"] != null) {
      final v = json["subclasses"];
      final arr0 = <Subclasses>[];
      v.forEach((v) {
        arr0.add(Subclasses.fromJson(v));
      });
      subclasses = arr0;
    }
    url = json["url"]?.toString();
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data["index"] = index;
    data["name"] = name;
    data["hit_die"] = hitDie;
    if (proficiencyChoices != null) {
      final v = proficiencyChoices;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["proficiency_choices"] = arr0;
    }
    if (proficiencies != null) {
      final v = proficiencies;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["proficiencies"] = arr0;
    }
    if (savingThrows != null) {
      final v = savingThrows;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["saving_throws"] = arr0;
    }
    if (startingEquipment != null) {
      final v = startingEquipment;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["starting_equipment"] = arr0;
    }
    if (startingEquipmentOptions != null) {
      final v = startingEquipmentOptions;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["starting_equipment_options"] = arr0;
    }
    data["class_levels"] = classLevels;
    if (multiClassing != null) {
      data["multi_classing"] = multiClassing!.toJson();
    }
    if (subclasses != null) {
      final v = subclasses;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data["subclasses"] = arr0;
    }
    data["url"] = url;
    if (spellcasting != null) {
      data["spellcasting"] = spellcasting!.toJson();
    }
    data["spells"] = spells;
    return data;
  }
}

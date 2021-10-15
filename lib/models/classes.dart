class Classes {
  int count = 0;
  List<Results>? results = [];

  Classes({this.count = 0, this.results});

  Classes.fromJson(Map<String, dynamic> json) {
    count = json["count"]?.toInt();
    if (json["results"] != null) {
      final v = json["results"];
      final arr0 = <Results>[];
      v.forEach((v) {
        arr0.add(Results.fromJson(v));
      });
      results = arr0;
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    // ignore: unnecessary_null_comparison
    if (this.results != null) {
      data['results'] = this.results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  String? index;
  String? name;
  String? url;

  Results({
    this.index = '',
    this.name = '',
    this.url = '',
  });

  Results.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['index'] = this.index;
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

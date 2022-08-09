class GameInfoModel {
  String? match;
  String? score;
  String? time;

  GameInfoModel({this.match, this.score, this.time});

  GameInfoModel.fromJson(Map<String, dynamic> json) {
    match = json['match'];
    score = json['score'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['match'] = match;
    data['score'] = score;
    data['time'] = time;
    return data;
  }
}

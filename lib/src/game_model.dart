class GameInfoModel {
  String? match;
  String? score;
  GameInfoModel({this.match, this.score});

  GameInfoModel.fromJson(Map<String, dynamic> json) {
    match = json['match'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['match'] = this.match;
    data['score'] = this.score;
    return data;
  }
}

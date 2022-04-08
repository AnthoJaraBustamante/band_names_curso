class Band {
  String id;
  String name;
  int votes;
  Band({
    required this.id,
    required this.name,
    required this.votes,
  });

  String get voteString => votes.toString();

  factory Band.fromMap(Map<String, dynamic> json) => Band(
        id: json["id"] as String,
        name: json["name"] as String,
        votes: json["votes"] as int,
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "votes": votes,
      };
}

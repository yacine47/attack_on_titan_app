import 'package:attack_on_titan_app/core/models/group_model.dart';
import 'package:attack_on_titan_app/core/models/relative_model.dart';
import 'package:equatable/equatable.dart';

class CharacterModel extends Equatable {
  const CharacterModel({
    required this.id,
    required this.name,
    required this.img,
    required this.alias,
    required this.species,
    required this.gender,
    required this.age,
    required this.height,
    required this.relatives,
    required this.birthplace,
    required this.residence,
    required this.status,
    required this.occupation,
    required this.groups,
    required this.roles,
    required this.episodes,
  });

  final int? id;
  final String? name;
  final String? img;
  final List<String> alias;
  final List<String> species;
  final String? gender;
  final String? age;
  final String? height;
  final List<RelativeModel> relatives;
  final String? birthplace;
  final String? residence;
  final String? status;
  final String? occupation;
  final List<GroupModel> groups;
  final List<String> roles;
  final List<String> episodes;

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      id: json["id"],
      name: json["name"],
      img: json["img"],
      alias: json["alias"] == null ? [] : List<String>.from(json["alias"]!.map((x) => x)),
      species: json["species"] == null ? [] : List<String>.from(json["species"]!.map((x) => x)),
      gender: json["gender"],
      age: json["age"]?.toString(),
      height: json["height"],
      relatives: json["relatives"] == null ? [] : List<RelativeModel>.from(json["relatives"]!.map((x) => RelativeModel.fromJson(x))),
      birthplace: json["birthplace"],
      residence: json["residence"],
      status: json["status"],
      occupation: json["occupation"],
      groups: json["groups"] == null ? [] : List<GroupModel>.from(json["groups"]!.map((x) => GroupModel.fromJson(x))),
      roles: json["roles"] == null ? [] : List<String>.from(json["roles"]!.map((x) => x)),
      episodes: json["episodes"] == null ? [] : List<String>.from(json["episodes"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "img": img,
        "alias": alias.map((x) => x).toList(),
        "species": species.map((x) => x).toList(),
        "gender": gender,
        "age": age,
        "height": height,
        "relatives": relatives.map((x) => x.toJson()).toList(),
        "birthplace": birthplace,
        "residence": residence,
        "status": status,
        "occupation": occupation,
        "groups": groups.map((x) => x.toJson()).toList(),
        "roles": roles.map((x) => x).toList(),
        "episodes": episodes.map((x) => x).toList(),
      };

  @override
  List<Object?> get props => [
        id,
        name,
        img,
        alias,
        species,
        gender,
        age,
        height,
        relatives,
        birthplace,
        residence,
        status,
        occupation,
        groups,
        roles,
        episodes,
      ];

  static const fakeCharacter = CharacterModel(
    id: 1,
    name: "Eren Yeager",
    img: "https://example.com/eren.jpg",
    alias: ["Attack Titan", "Eren Jaeger"],
    species: ["Human", "Titan Shifter"],
    gender: "Male",
    age: "19",
    height: "183 cm",
    relatives: [],
    birthplace: "Shiganshina District",
    residence: "Paradis Island",
    status: "Deceased",
    occupation: "Scout Regiment Soldier",
    groups: [],
    roles: ["Protagonist", "Titan Shifter"],
    episodes: ["S1E01", "S1E02", "S4E16"],
  );
}

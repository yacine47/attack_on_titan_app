import 'package:equatable/equatable.dart';

class GroupModel extends Equatable {
  const GroupModel({
    required this.name,
    required this.subGroups,
  });

  final String? name;
  final List<String> subGroups;

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return GroupModel(
      name: json["name"],
      subGroups: json["sub_groups"] == null ? [] : List<String>.from(json["sub_groups"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "name": name,
        "sub_groups": subGroups.map((x) => x).toList(),
      };

  @override
  List<Object?> get props => [
        name,
        subGroups,
      ];
}

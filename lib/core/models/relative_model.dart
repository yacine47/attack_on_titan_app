import 'package:equatable/equatable.dart';

class RelativeModel extends Equatable {
  const RelativeModel({
    required this.family,
    required this.members,
  });

  final String? family;
  final List<String> members;

  factory RelativeModel.fromJson(Map<String, dynamic> json) {
    return RelativeModel(
      family: json["family"],
      members: json["members"] == null ? [] : List<String>.from(json["members"]!.map((x) => x)),
    );
  }

  Map<String, dynamic> toJson() => {
        "family": family,
        "members": members.map((x) => x).toList(),
      };

  @override
  List<Object?> get props => [
        family,
        members,
      ];
}

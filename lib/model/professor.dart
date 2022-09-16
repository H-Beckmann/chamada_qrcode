
import 'dart:convert';

import 'package:chamada_qrcode/model/group.dart';

class Professor {
    Professor({
        required this.name,
        required this.email,
        required this.groups,
    });

    String name;
    String email;
    List<Group> groups;

    factory Professor.fromJson(String str) => Professor.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Professor.fromMap(Map<String, dynamic> json) => Professor(
        name: json["name"],
        email: json["email"],
        groups: List<Group>.from(json["groups"].map((x) => Group.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "groups": List<dynamic>.from(groups.map((x) => x.toMap())),
    };
}

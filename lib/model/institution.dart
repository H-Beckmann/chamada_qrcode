
import 'dart:convert';

class Institution {
    Institution({
        required this.name,
        required this.color,
    });

    String name;
    String color;

    factory Institution.fromJson(String str) => Institution.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Institution.fromMap(Map<String, dynamic> json) => Institution(
        name: json["name"],
        color: json["color"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "color": color,
    };
}

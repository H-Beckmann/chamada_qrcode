import "dart:convert";

class Institution {
    Institution({
        required this.name,
        required this.color,
    });

    String name;
    String color;

    factory Institution.fromRawJson(String str) => Institution.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Institution.fromJson(Map<String, dynamic> json) => Institution(
        name: json["name"],
        color: json["color"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "color": color,
    };
}
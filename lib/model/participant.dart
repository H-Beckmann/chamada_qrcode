import 'dart:convert';

class Participant {
    Participant({
        required this.name,
        required this.email,
        required this.absences,
    });

    String name;
    String email;
    int absences;

    factory Participant.fromRawJson(String str) => Participant.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Participant.fromJson(Map<String, dynamic> json) => Participant(
        name: json["name"],
        email: json["email"],
        absences: json["absences"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "absences": absences,
    };
}
// To parse this JSON data, do
//
//     final class = classFromJson(jsonString);

import 'dart:convert';

class Class {
    Class({
        required this.name,
        required this.participants,
        required this.institution,
        required this.meetings,
        required this.maxAbsences,
    });

    String name;
    List<Participant> participants;
    Institution institution;
    int meetings;
    int maxAbsences;

    factory Class.fromRawJson(String str) => Class.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Class.fromJson(Map<String, dynamic> json) => Class(
        name: json["name"],
        participants: List<Participant>.from(json["participants"].map((x) => Participant.fromJson(x))),
        institution: Institution.fromJson(json["institution"]),
        meetings: json["meetings"],
        maxAbsences: json["maxAbsences"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
        "institution": institution.toJson(),
        "meetings": meetings,
        "maxAbsences": maxAbsences,
    };
}

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

class Participant {
    Participant({
        required this.name,
        required this.email,
    });

    String name;
    String email;

    factory Participant.fromRawJson(String str) => Participant.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Participant.fromJson(Map<String, dynamic> json) => Participant(
        name: json["name"],
        email: json["email"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
    };
}

import 'dart:convert';

import 'package:chamada_qrcode/model/institution.dart';
import 'package:chamada_qrcode/model/participant.dart';

class Group {
    Group({
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

    factory Group.fromRawJson(String str) => Group.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Group.fromJson(Map<String, dynamic> json) => Group(
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
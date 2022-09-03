
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

    factory Group.fromJson(String str) => Group.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Group.fromMap(Map<String, dynamic> json) => Group(
        name: json["name"],
        participants: List<Participant>.from(json["participants"].map((x) => Participant.fromMap(x))),
        institution: Institution.fromMap(json["institution"]),
        meetings: json["meetings"],
        maxAbsences: json["maxAbsences"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "participants": List<dynamic>.from(participants.map((x) => x.toMap())),
        "institution": institution.toMap(),
        "meetings": meetings,
        "maxAbsences": maxAbsences,
    };
}


import 'dart:convert';

import 'package:chamada_qrcode/model/frequency.dart';

class Participant {
    Participant({
        required this.name,
        required this.email,
        required this.frequency,
    });

    String name;
    String email;
    List<Frequency> frequency;

    factory Participant.fromRawJson(String str) => Participant.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Participant.fromJson(Map<String, dynamic> json) => Participant(
        name: json["name"],
        email: json["email"],
        frequency: List<Frequency>.from(json["frequency"].map((x) => Frequency.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "frequency": List<dynamic>.from(frequency.map((x) => x.toJson())),
    };
}
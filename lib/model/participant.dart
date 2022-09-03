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

    factory Participant.fromJson(String str) => Participant.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Participant.fromMap(Map<String, dynamic> json) => Participant(
        name: json["name"],
        email: json["email"],
        frequency: List<Frequency>.from(json["frequency"].map((x) => Frequency.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "email": email,
        "frequency": List<dynamic>.from(frequency.map((x) => x.toMap())),
    };
}
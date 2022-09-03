import 'dart:convert';

class Frequency {
    Frequency({
        required this.day,
        required this.present,
    });

    DateTime day;
    bool present;

    factory Frequency.fromJson(String str) => Frequency.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Frequency.fromMap(Map<String, dynamic> json) => Frequency(
        day: DateTime.parse(json["day"]),
        present: json["present"],
    );

    Map<String, dynamic> toMap() => {
        "day": "${day.year.toString().padLeft(4, '0')}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}",
        "present": present,
    };
}

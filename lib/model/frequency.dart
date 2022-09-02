import 'dart:convert';

class Frequency {
    Frequency({
        required this.day,
        required this.present,
    });

    DateTime day;
    bool present;

    factory Frequency.fromRawJson(String str) => Frequency.fromJson(json.decode(str));

    String toRawJson() => json.encode(toJson());

    factory Frequency.fromJson(Map<String, dynamic> json) => Frequency(
        day: DateTime.parse(json["day"]),
        present: json["present"],
    );

    Map<String, dynamic> toJson() => {
        "day": "${day.year.toString().padLeft(4, '0')}-${day.month.toString().padLeft(2, '0')}-${day.day.toString().padLeft(2, '0')}",
        "present": present,
    };
}

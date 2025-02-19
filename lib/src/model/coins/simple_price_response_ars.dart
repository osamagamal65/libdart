// To parse this JSON data, do
//
//     final simplePriceArsResponse = simplePriceArsResponseFromJson(jsonString);

// Dart imports:
import 'dart:convert';

SimplePriceArsResponse simplePriceArsResponseFromJson(String str) =>
    SimplePriceArsResponse.fromJson(json.decode(str));

String simplePriceArsResponseToJson(SimplePriceArsResponse data) =>
    json.encode(data.toJson());

class SimplePriceArsResponse {
  SimplePriceArsResponse({
    this.uniris,
  });

  factory SimplePriceArsResponse.fromJson(Map<String, dynamic> json) =>
      SimplePriceArsResponse(
        uniris: Uniris.fromJson(json['uniris']),
      );

  Uniris? uniris;

  Map<String, dynamic> toJson() => {
        'uniris': uniris!.toJson(),
      };
}

class Uniris {
  Uniris({
    this.ars,
  });

  factory Uniris.fromJson(Map<String, dynamic> json) => Uniris(
        ars: json['ars'].toDouble(),
      );

  double? ars;

  Map<String, dynamic> toJson() => {
        'ars': ars,
      };
}

// To parse this JSON data, do
//
//     final simplePriceMxnResponse = simplePriceMxnResponseFromJson(jsonString);

// Dart imports:
import 'dart:convert';

SimplePriceMxnResponse simplePriceMxnResponseFromJson(String str) =>
    SimplePriceMxnResponse.fromJson(json.decode(str));

String simplePriceMxnResponseToJson(SimplePriceMxnResponse data) =>
    json.encode(data.toJson());

class SimplePriceMxnResponse {
  SimplePriceMxnResponse({
    this.uniris,
  });

  factory SimplePriceMxnResponse.fromJson(Map<String, dynamic> json) =>
      SimplePriceMxnResponse(
        uniris: Uniris.fromJson(json['uniris']),
      );

  Uniris? uniris;

  Map<String, dynamic> toJson() => {
        'uniris': uniris!.toJson(),
      };
}

class Uniris {
  Uniris({
    this.mxn,
  });

  factory Uniris.fromJson(Map<String, dynamic> json) => Uniris(
        mxn: json['mxn'].toDouble(),
      );

  double? mxn;

  Map<String, dynamic> toJson() => {
        'mxn': mxn,
      };
}

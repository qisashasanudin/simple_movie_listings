// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'airline.g.dart';

// 3
@JsonSerializable()
class Airline {
  // 5
  @JsonKey(name: 'airline_code')
  String airlineCode;
  String name;

  // 6
  Airline({this.airlineCode, this.name});

  // 7
  factory Airline.fromJson(Map<String, dynamic> json) =>
      _$AirlineFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$AirlineToJson(this);
}

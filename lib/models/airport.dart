// 1
import 'package:json_annotation/json_annotation.dart';

// 2
part 'airport.g.dart';

// 3
@JsonSerializable()
class Airport {
  // 5
  String id;
  @JsonKey(name: 'iata_code')
  String iataCode;
  String name;
  String city;
  String timezone;
  String country;

  // 6
  Airport(
      {this.city,
      this.country,
      this.iataCode,
      this.id,
      this.name,
      this.timezone});

  // 7
  factory Airport.fromJson(Map<String, dynamic> json) =>
      _$AirportFromJson(json);

  // 8
  Map<String, dynamic> toJson() => _$AirportToJson(this);
}

import 'package:json_annotation/json_annotation.dart';
import 'package:movies/models/airline.dart';

part 'airline_list.g.dart';

@JsonSerializable()
class AirlineList {
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'result')
  List<Airline> result;

  AirlineList({this.message, this.result, this.status});
  factory AirlineList.fromJson(Map<String, dynamic> json) =>
      _$AirlineListFromJson(json);

  Map<String, dynamic> toJson() => _$AirlineListToJson(this);
}

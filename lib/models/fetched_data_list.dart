import 'package:json_annotation/json_annotation.dart';
import 'package:movies/models/airline.dart';
import 'package:movies/models/airport.dart';

part 'fetched_data_list.g.dart';

@JsonSerializable()
class FetchedDataList {
  @JsonKey(name: 'status')
  String status;
  @JsonKey(name: 'message')
  String message;
  @JsonKey(name: 'result')
  List<Airport> result;

  FetchedDataList({this.message, this.result, this.status});
  factory FetchedDataList.fromJson(Map<String, dynamic> json) =>
      _$FetchedDataListFromJson(json);

  Map<String, dynamic> toJson() => _$FetchedDataListToJson(this);
}

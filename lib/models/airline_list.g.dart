// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airline_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirlineList _$AirlineListFromJson(Map<String, dynamic> json) {
  return AirlineList(
    message: json['message'] as String,
    result: (json['result'] as List)
        ?.map((e) =>
            e == null ? null : Airline.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$AirlineListToJson(AirlineList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
    };

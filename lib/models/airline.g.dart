// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Airline _$AirlineFromJson(Map<String, dynamic> json) {
  return Airline(
    airlineCode: json['airline_code'] as String,
    name: json['name'] as String,
  );
}

Map<String, dynamic> _$AirlineToJson(Airline instance) => <String, dynamic>{
      'airline_code': instance.airlineCode,
      'name': instance.name,
    };

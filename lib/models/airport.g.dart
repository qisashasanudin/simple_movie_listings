// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Airport _$AirportFromJson(Map<String, dynamic> json) {
  return Airport(
    city: json['city'] as String,
    country: json['country'] as String,
    iataCode: json['iata_code'] as String,
    id: json['id'] as String,
    name: json['name'] as String,
    timezone: json['timezone'] as String,
  );
}

Map<String, dynamic> _$AirportToJson(Airport instance) => <String, dynamic>{
      'id': instance.id,
      'iata_code': instance.iataCode,
      'name': instance.name,
      'city': instance.city,
      'timezone': instance.timezone,
      'country': instance.country,
    };

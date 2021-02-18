// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetched_data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FetchedDataList _$FetchedDataListFromJson(Map<String, dynamic> json) {
  return FetchedDataList(
    message: json['message'] as String,
    result: (json['result'] as List)
        ?.map((e) =>
            e == null ? null : Airport.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    status: json['status'] as String,
  );
}

Map<String, dynamic> _$FetchedDataListToJson(FetchedDataList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'result': instance.result,
    };

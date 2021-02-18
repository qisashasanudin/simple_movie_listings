// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airlines_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$AirlinesService extends AirlinesService {
  _$AirlinesService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = AirlinesService;

  @override
  Future<Response<AirlineList>> getAirlines() {
    final $url = 'ticket/flight/airline';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<AirlineList, AirlineList>($request);
  }
}

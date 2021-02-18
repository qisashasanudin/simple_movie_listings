// 1
import 'package:chopper/chopper.dart';
import 'package:movies/models/airline_list.dart';
// 2
import 'package:movies/service/header_interceptor.dart';
import 'package:movies/service/model_converter.dart';

// 3
part 'airlines_service.chopper.dart';

// 4
@ChopperApi()
// 5
abstract class AirlinesService extends ChopperService {
  // 6
  @Get(path: 'ticket/flight/airline')
  // 7
  Future<Response<AirlineList>> getAirlines();

  // 8
  static AirlinesService create() {
    // 9
    final client = ChopperClient(
      // 10
      baseUrl: 'http://178.128.215.125:3000',
      // 11
      services: [
        _$AirlinesService(),
      ],
      interceptors: [
        HttpLoggingInterceptor(),
        HeaderInterceptor(),
      ],
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
    );
    // 12
    return _$AirlinesService(client);
  }
}

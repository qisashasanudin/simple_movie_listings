// 1
import 'package:chopper/chopper.dart';
import 'package:movies/models/fetched_data_list.dart';
// 2
import 'package:movies/service/header_interceptor.dart';
import 'package:movies/service/model_converter.dart';

// 3
part 'api_service.chopper.dart';

// 4
@ChopperApi()
// 5
abstract class APIService extends ChopperService {
  // 6
  @Get(path: 'ticket/flight/airline')
  Future<Response<FetchedDataList>> getAirlines();

  @Get(path: 'ticket/flight/airport')
  Future<Response<FetchedDataList>> getAirports();

  // 8
  static APIService create() {
    // 9
    final client = ChopperClient(
      // 10
      baseUrl: 'http://178.128.215.125:3000',
      // 11
      services: [
        _$APIService(),
      ],
      interceptors: [
        HttpLoggingInterceptor(),
        HeaderInterceptor(),
      ],
      converter: ModelConverter(),
      errorConverter: JsonConverter(),
    );
    // 12
    return _$APIService(client);
  }
}

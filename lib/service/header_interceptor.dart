import 'dart:async';
import 'package:chopper/chopper.dart';

// 1
class HeaderInterceptor implements RequestInterceptor {
  // 2
  static const String AUTH_HEADER = "Authorization";
  // 3
  static const String BEARER = "Bearer ";
  // 4
  static const String V4_AUTH_HEADER =
      "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI1ZmQxOWU3MmZiZTk4ODNlMWQwNWFlNGYzMzk1ZjUwMiIsInN1YiI6IjYwMmRlOTQ3ZDk0MDM1MDAzZjc2Y2VkNSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.Z_BNpcORB6fBASjgeFF2A_MT_-EsgD1zBIBsrbV3VlI";

  @override
  FutureOr<Request> onRequest(Request request) async {
    // 5
    Request newRequest =
        request.copyWith(headers: {AUTH_HEADER: BEARER + V4_AUTH_HEADER});
    return newRequest;
  }
}

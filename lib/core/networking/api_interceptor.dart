import 'package:dio/dio.dart';
import 'package:doc_doc/core/helper/share_pref_halper.dart';
import 'package:doc_doc/core/helper/shared_pref_keys.dart';

class ApiInterceptor extends Interceptor {
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    options.headers['Authorization'] =
        await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken) !=
            null
        ? 'Bearer ${await SharedPrefHelper.getSecuredString(SharedPrefKeys.userToken)}'
        : null;
    super.onRequest(options, handler);
  }
}

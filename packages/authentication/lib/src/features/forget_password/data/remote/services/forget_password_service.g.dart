// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forget_password_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _ForgetPasswordService implements ForgetPasswordService {
  _ForgetPasswordService(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<APIResponse<ForgetPasswordInitResponseModel>> forgetPasswordInit(
      {required ForgetPasswordInitRequest forgetPasswordInitRequest}) async {
    final _extra = <String, dynamic>{
      'disableRefreshToken': true,
      'INCLUDE_APPCKECK_API_EXTRA_PARAM': true,
    };
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(forgetPasswordInitRequest.toJson());
    final _options =
        _setStreamType<APIResponse<ForgetPasswordInitResponseModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/kib-invest/auth/forgot-password/init',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late APIResponse<ForgetPasswordInitResponseModel> _value;
    try {
      _value = APIResponse<ForgetPasswordInitResponseModel>.fromJson(
        _result.data!,
        (json) => ForgetPasswordInitResponseModel.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<APIResponse<ForgetPasswordVerifyResponseModel>> forgetPasswordVerify(
      {required ForgetPasswordVerifyRequest
          forgetPasswordVerifyRequest}) async {
    final _extra = <String, dynamic>{
      'disableRefreshToken': true,
      'INCLUDE_APPCKECK_API_EXTRA_PARAM': true,
    };
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(forgetPasswordVerifyRequest.toJson());
    final _options =
        _setStreamType<APIResponse<ForgetPasswordVerifyResponseModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/kib-invest/auth/forgot-password/verify',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late APIResponse<ForgetPasswordVerifyResponseModel> _value;
    try {
      _value = APIResponse<ForgetPasswordVerifyResponseModel>.fromJson(
        _result.data!,
        (json) => ForgetPasswordVerifyResponseModel.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<APIResponse<ForgetPasswordResetResponseModel>> forgetPasswordReset(
      {required ForgetPasswordResetRequest forgetPasswordResetRequest}) async {
    final _extra = <String, dynamic>{
      'disableRefreshToken': true,
      'INCLUDE_APPCKECK_API_EXTRA_PARAM': true,
    };
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(forgetPasswordResetRequest.toJson());
    final _options =
        _setStreamType<APIResponse<ForgetPasswordResetResponseModel>>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/kib-invest/auth/forgot-password/reset',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            )));
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late APIResponse<ForgetPasswordResetResponseModel> _value;
    try {
      _value = APIResponse<ForgetPasswordResetResponseModel>.fromJson(
        _result.data!,
        (json) => ForgetPasswordResetResponseModel.fromJson(
            json as Map<String, dynamic>),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

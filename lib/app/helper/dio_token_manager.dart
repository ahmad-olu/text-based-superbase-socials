import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TokenManager extends Interceptor {
  TokenManager._internal();
  static final TokenManager _instance = TokenManager._internal();
  static TokenManager get instance => _instance;

  String? _token;

  static const _secureTokenKey = 'accessToken';
  static const _storage = FlutterSecureStorage();

  @override
  void onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      final data =
          Map<String, dynamic>.from(response.data as Map<dynamic, dynamic>);
      if (data['access_token'] != null) {
        saveToken(data['access_token'] as String);
      }
    } else if (response.statusCode == 401) {
      clearToken();
    }
    super.onResponse(response, handler);
  }

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers['access_token'] = _token;
    return super.onRequest(options, handler);
  }

  // @override
  // void onError(DioError err, ErrorInterceptorHandler handler) {
  //   // TODO: implement onError
  //   super.onError(err, handler);
  // }

  Future<void> initToken() async {
    _token = await _storage.read(key: _secureTokenKey);
    log('initializing token :${_token == null ? 'Empty Token' : _token!}');
  }

  Future<void> saveToken(String newToken) async {
    if (_token != newToken) {
      _token = newToken;
      await _storage.write(key: _secureTokenKey, value: _token);
    }
    log(_token!);
  }

  Future<void> clearToken() async {
    _token = null;
    await _storage.write(key: _secureTokenKey, value: _token);
    log('cleared token');
  }

  Future<String?> getToken() async => _storage.read(key: _secureTokenKey);
}

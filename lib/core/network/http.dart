import 'dart:convert';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:http/http.dart' as http;

import '../constant.dart';
import 'check_network.dart';

class HttpHelper {
  static late NetworkInfo networkInfo;
  static const Duration timeout = Duration(seconds: 10);

  static init() {
    networkInfo = NetworkInfoImpl(Connectivity());
  }

  static Map<String, String> _getHeaders({String? token, String? contentType}) {
    return {
      "Content-Type": contentType ?? "application/json",
      if (token != null) "Authorization": token,
    };
  }

  static String _buildUrl(String url, Map<String, dynamic>? query) {
    if (query == null || query.isEmpty) {
      return '${Constant.baseUrl}$url';
    }

    final uri = Uri.parse('${Constant.baseUrl}$url');
    final queryParams = Map<String, String>.from(
        query.map((key, value) => MapEntry(key, value.toString())));
    return uri.replace(queryParameters: queryParams).toString();
  }

  static Future<http.Response> get({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    final fullUrl = _buildUrl(url, query);
    final headers = _getHeaders(token: token);

    return await http
        .get(
          Uri.parse(fullUrl),
          headers: headers,
        )
        .timeout(timeout);
  }

  static Future<http.Response> post({
    required String url,
    required Object data,
    Map<String, dynamic>? query,
    String? token,
    String? contentType,
  }) async {
    final fullUrl = _buildUrl(url, query);
    final headers = _getHeaders(token: token, contentType: contentType);
    final body = jsonEncode(data);

    return await http
        .post(
          Uri.parse(fullUrl),
          headers: headers,
          body: body,
        )
        .timeout(timeout);
  }

  static Future<http.Response> put({
    required String url,
    required Map<String, dynamic> data,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    final fullUrl = _buildUrl(url, query);
    final headers = _getHeaders(token: token);
    final body = jsonEncode(data);

    return await http
        .put(
          Uri.parse(fullUrl),
          headers: headers,
          body: body,
        )
        .timeout(timeout);
  }

  static Future<http.Response> delete({
    required String url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    final fullUrl = _buildUrl(url, query);
    final headers = _getHeaders(token: token);

    return await http
        .delete(
          Uri.parse(fullUrl),
          headers: headers,
        )
        .timeout(timeout);
  }
}

import 'dart:io';


import 'failure.dart';

class ErrorHandler implements Exception {
  late Failure failure;

  ErrorHandler.handle(dynamic error) {
    if (error is HttpException) {
      failure = _handleError(error);
    } else {
      // default error
      failure = DataSource.defaults.getFailure();
    }
  }
}

Failure _handleError(HttpException error) {
  // HttpException doesn't provide detailed error types like DioException
  // We can analyze the error message to determine the type

  if (error.message.contains('/')) {
    return _customhandleHttpResponse(error.message);
  } else {
    return DataSource.defaults.getFailure();
  }
}

Failure _customhandleHttpResponse(String error) {
  // Handle HTTP response status codes
  List formatError = error.split('/');
  String message = formatError[1];
  final int code = int.tryParse(formatError[0])!;

  return Failure(code, message);
}

Failure handleHttpResponse(int code) {
  // Handle HTTP response status codes
  switch (code) {
    case 200:
    case 201:
      return DataSource.success.getFailure();
    case 400:
      return DataSource.badRequest.getFailure();
    case 401:
      return DataSource.unauthorized.getFailure();
    case 403:
      return DataSource.forbidden.getFailure();
    case 404:
      return DataSource.notFound.getFailure();
    case 500:
      return DataSource.internalServerError.getFailure();
    case -1:
      return DataSource.connectTimeout.getFailure();
    case -6:
      return DataSource.noInternetConnection.getFailure();
    case -7:
      return DataSource.defaults.getFailure();
    default:
      return DataSource.defaults.getFailure();
  }
}

enum DataSource {
  success,
  noContent,
  badRequest,
  forbidden,
  unauthorized,
  notFound,
  internalServerError,
  connectTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  defaults,
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    switch (this) {
      case DataSource.success:
        return Failure(ResponseCode.success, ResponseMessage.success);
      case DataSource.noContent:
        return Failure(ResponseCode.noContent, ResponseMessage.noContent);
      case DataSource.badRequest:
        return Failure(ResponseCode.badRequest, ResponseMessage.badRequest);
      case DataSource.forbidden:
        return Failure(ResponseCode.forbidden, ResponseMessage.forbidden);
      case DataSource.unauthorized:
        return Failure(ResponseCode.unauthorized, ResponseMessage.unauthorized);
      case DataSource.notFound:
        return Failure(ResponseCode.notFound, ResponseMessage.notFound);
      case DataSource.internalServerError:
        return Failure(
          ResponseCode.internalServerError,
          ResponseMessage.internalServerError,
        );
      case DataSource.connectTimeout:
        return Failure(
          ResponseCode.connectTimeout,
          ResponseMessage.connectTimeout,
        );
      case DataSource.cancel:
        return Failure(ResponseCode.cancel, ResponseMessage.cancel);
      case DataSource.receiveTimeout:
        return Failure(
          ResponseCode.receiveTimeout,
          ResponseMessage.receiveTimeout,
        );
      case DataSource.sendTimeout:
        return Failure(ResponseCode.sendTimeout, ResponseMessage.sendTimeout);
      case DataSource.cacheError:
        return Failure(ResponseCode.cacheError, ResponseMessage.cacheError);
      case DataSource.noInternetConnection:
        return Failure(
          ResponseCode.noInternetConnection,
          ResponseMessage.noInternetConnection,
        );
      case DataSource.defaults:
        return Failure(ResponseCode.defaults, ResponseMessage.defaults);
    }
  }
}

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorized = 401; // failure, user is not authorised
  static const int forbidden = 403; //  failure, API rejected request
  static const int internalServerError = 500;
  static const int notFound = 404; // failure, crash in server side

  // local status code
  static const int connectTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int defaults = -7;
}

class ResponseMessage {
  static const String success = "success"; // success with data
  static const String noContent =
      "success"; // success with no data (no content)
  static const String badRequest =
      "Bad request, Try again later"; // failure, API rejected request
  static const String unauthorized =
      "User is unauthorised, Try again later"; // failure, user is not authorised
  static const String forbidden =
      "Forbidden request, Try again later"; //  failure, API rejected request
  static const String internalServerError =
      "internal Server Error, Try again later"; // failure, crash in server side
  static const String notFound =
      "Not Found Error, Try again later"; // failure, not found

  // local status code
  static const String connectTimeout = "Time out error, Try again later";
  static const String cancel = "Request was cancelled, Try again later";
  static const String receiveTimeout = "Time out error, Try again later";
  static const String sendTimeout = "Time out error, Try again later";
  static const String cacheError = "Cache error, Try again later";
  static const String noInternetConnection =
      "Please check your internet connection";
  static const String defaults = "Some thing went wrong, Try again later";
}

class ApiInternalStatus {
  static const int success = 0;
  static const int failure = 1;
}

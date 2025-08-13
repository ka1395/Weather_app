import 'package:intl/intl.dart';

/// Fake Weather Response Handler
class FakeWeatherResponseHandler {
  Map<String, dynamic> fakeWeatherSuccessResponse = {
    "status": true,
    "message": "success",
    "data": {
      "nameCity": "Egypt-Cairo",
      "latitude": 30.0625,
      "longitude": 31.25,
      "timezone": "GMT",
      "timezone_abbreviation": "GMT",
      "elevation": 22.0,
      "current_units": {
        "time": "iso8601",
        "interval": "seconds",
        "temperature_2m": "°C",
        "weather_code": "wmo code",
        "wind_speed_10m": "km/h"
      },
      "current": {
        "time": DateFormat('h:mm a').format(DateTime.now()),
        "interval": 900,
        "temperature_2m": 38.5,
        "weather_code": 0,
        "weather_description": "sunny",
        "wind_speed_10m": 13.2,
        "temperature_2m_min": 37.5,
        "temperature_2m_max": 40.5
      },
      "hourly_units": {"time": "iso8601", "temperature_2m": "°C"},
      "hourly": {
        "time": [
          "2025-08-13T00:00",
          "2025-08-13T01:00",
          "2025-08-13T02:00",
          "2025-08-13T03:00",
          "2025-08-13T04:00",
          "2025-08-13T05:00",
          "2025-08-13T06:00",
          "2025-08-13T07:00",
          "2025-08-13T08:00",
          "2025-08-13T09:00",
          "2025-08-13T10:00",
          "2025-08-13T11:00",
          "2025-08-13T12:00",
          "2025-08-13T13:00",
          "2025-08-13T14:00",
          "2025-08-13T15:00",
          "2025-08-13T16:00",
          "2025-08-13T17:00",
          "2025-08-13T18:00",
          "2025-08-13T19:00",
          "2025-08-13T20:00",
          "2025-08-13T21:00",
          "2025-08-13T22:00",
          "2025-08-13T23:00",
        ],
        "temperature_2m": [
          26.4,
          26.0,
          25.6,
          25.2,
          25.3,
          26.4,
          28.7,
          31.2,
          33.7,
          35.9,
          37.7,
          39.0,
          40.1,
          40.7,
          40.7,
          40.2,
          39.0,
          36.9,
          34.5,
          32.3,
          30.5,
          29.3,
          28.2,
          27.4,
        ],
      }
    }
  };

  // Network error response
  Map<String, dynamic> fakeNetworkErrorResponse = {
    "status": false,
    "message": "Network Error",
    "error": {
      "code": -6,
      "reason": "No internet connection. Please check your network."
    }
  };

  // Server error response
  Map<String, dynamic> fakeServerErrorResponse = {
    "status": false,
    "message": "Server Error",
    "error": {
      "code": 500,
      "reason": "Weather service is temporarily unavailable."
    }
  };

  // Unauthorized error response
  Map<String, dynamic> fakeUnauthorizedErrorResponse = {
    "status": false,
    "message": "Unauthorized",
    "error": {
      "code": 401,
      "reason": "Invalid API key or authentication credentials"
    }
  };

  // Invalid location error response
  Map<String, dynamic> fakeInvalidLocationErrorResponse = {
    "status": false,
    "message": "Invalid Location",
    "error": {
      "code": 400,
      "reason":
          "Invalid location provided. Please provide a valid city name or coordinates."
    }
  };

  // Timeout error response
  Map<String, dynamic> fakeTimeoutErrorResponse = {
    "status": false,
    "message": "Request Timeout",
    "error": {"code": -1, "reason": "Request timeout. Please try again."}
  };

  // Not found error response
  Map<String, dynamic> fakeNotFoundErrorResponse = {
    "status": false,
    "message": "Not Found",
    "error": {
      "code": 404,
      "reason": "Weather data not found for the specified location."
    }
  };

  // Forbidden error response
  Map<String, dynamic> fakeForbiddenErrorResponse = {
    "status": false,
    "message": "Forbidden",
    "error": {
      "code": 403,
      "reason":
          "Access denied. You don't have permission to access this resource."
    }
  };

  // Unknown error response
  Map<String, dynamic> fakeUnknownErrorResponse = {
    "status": false,
    "message": "Unknown Error",
    "error": {
      "code": -7,
      "reason": "An unexpected error occurred. Please try again later."
    }
  };

  /// Get weather icon based on temperature

}

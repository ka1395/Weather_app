/// Data class for city information
class CityData {
  final String name;
  final String country;
  final double latitude;
  final double longitude;

  CityData({
    required this.name,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory CityData.fromJson(Map<String, dynamic> json) => CityData(
        name: json['name'],
        country: json['country'],
        latitude: json['latitude'],
        longitude: json['longitude'],
      );
  Map<String, dynamic> toJson() => {
        'name': name,
        'country': country,
        'latitude': latitude,
        'longitude': longitude,
      };
}

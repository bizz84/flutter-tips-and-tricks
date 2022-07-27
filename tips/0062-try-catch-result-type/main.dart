import 'dart:convert';
import 'dart:io';

//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:multiple_result/multiple_result.dart';

class Location {
  Location({
    required this.country,
    required this.city,
    required this.asn,
    required this.lat,
    required this.lon,
  });
  final String country;
  final String city;
  final String asn;
  final double lat;
  final double lon;

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      country: map['country'] ?? '',
      city: map['city'] ?? '',
      asn: map['asn'] ?? '',
      lat: double.tryParse(map['lat']) ?? 0.0,
      lon: double.tryParse(map['lon']) ?? 0.0,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'city': city,
      'asn': asn,
      'lat': lat,
      'lon': lon,
    };
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Location(country: $country, city: $city, asn: $asn, lat: $lat, lon: $lon)';
  }
}

Future<Location> getLocationFromIP(String ipAddress) async {
  try {
    final uri =
        Uri.parse('https://sys.airtel.lv/ip2country/$ipAddress/?full=true');
    final response = await http.get(uri);
    switch (response.statusCode) {
      case 200:
        final data = json.decode(response.body);
        return Location.fromMap(data);
      default:
        throw Exception(response.reasonPhrase);
    }
  } on SocketException catch (_) {
    rethrow;
  }
}

Future<Result<Exception, Location>> getLocationFromIP(String ipAddress) async {
  try {
    final uri =
        Uri.parse('https://sys.airtel.lv/ip2country/$ipAddress/?full=true');
    final response = await http.get(uri);
    switch (response.statusCode) {
      case 200:
        final data = json.decode(response.body);
        return Success(Location.fromMap(data));
      default:
        return Error(Exception(response.reasonPhrase));
    }
  } on SocketException catch (e) {
    return Error(e);
  }
}

Future<void> main() async {
  try {
    final location = await getLocationFromIP('122.1.4.122');
    print(location);
  } catch (e) {
    // TODO: handle exception, for example by showing an alert to the user
  }
  final result = await getLocationFromIP2('122.1.4.122');
  result.when(
    (exception) => print(exception), // TODO: Handle exception
    (location) => print(location), // TODO: Do something with location
  );
}

Future<void> placeOrder() async {
  try {
    final uid = authRepository.currentUser!.uid;
    // first await call
    final cart = await cartRepository.fetchCart(uid);
    final order = Order.fromCart(userId: uid, cart: cart);
    // second await call
    await ordersRepository.addOrder(uid, order);
    // third await call
    await cartRepository.setCart(uid, const Cart());
  } catch (e) {
    // TODO: Handle exceptions from any of the methods above
  }
}

Future<Result<Exception, void>> placeOrder() async {
  final uid = authRepository.currentUser!.uid;
  // first await call
  final result = await cartRepository.fetchCart(uid);
  if (result.isSuccess()) {
    final order = Order.fromCart(userId: uid, cart: result.getSuccess());
    // second await call
    final result = await ordersRepository.addOrder(uid, order);
    if (result.isSuccess()) {
      // third call (await not needed if we return the result)
      return cartRepository.setCart(uid, const Cart());
    } else {
      return result.getError()!;
    }
  } else {
    return result.getError()!;
  }
}

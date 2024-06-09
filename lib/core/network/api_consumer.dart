import 'package:dio/dio.dart';

abstract class ApiConsumer {
  Future<Response> get(
      String path, {
        Map<String, dynamic>? queryParameters,
      });

  Future<Response> post(
      String path, {
        Map<String, dynamic>? body,
        Map<String, dynamic>? queryParameters,
      });

  Future<Response> put(
      String path, {
        Map<String, dynamic>? body,
        Map<String, dynamic>? queryParameters,
      });

  Future<Response> delete(
      String path, {
        Map<String, dynamic>? queryParameters
      });
}
import 'dart:io';

import 'package:clean_architecture_structure/core/error/failure.dart';
import 'package:clean_architecture_structure/core/error/remote_exception_handler.dart';
import 'package:clean_architecture_structure/core/network/api_consumer.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';

class DioConsumer implements ApiConsumer {
  DioConsumer(this.client) {
    (client.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
      final client = HttpClient();
      client.badCertificateCallback = (cert, host, port) => true;
      return client;
    };
  }

  final Dio client;

  @override
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.get(path, queryParameters: queryParameters);
      return response;
    } on DioException catch (error) {
      throw ServerFailure(
        message: RemoteExceptionHandler.handleException(error),
        statusCode: error.response?.statusCode ?? -1,
      );
    }
  }

  @override
  Future<Response> post(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
    bool formDataIsEnabled = false,
  }) async {
    try {
      final response = await client.post(
        path,
        queryParameters: queryParameters,
        data: formDataIsEnabled ? FormData.fromMap(body!) : body,
      );
      return response;
    } on DioException catch (error) {
      throw ServerFailure(
        message: RemoteExceptionHandler.handleException(error),
        statusCode: error.response?.statusCode ?? -1,
      );
    }
  }

  @override
  Future<Response> put(
    String path, {
    Map<String, dynamic>? body,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await client.put(
        path,
        queryParameters: queryParameters,
        data: body,
      );
      return response;
    } on DioException catch (error) {
      throw ServerFailure(
        message: RemoteExceptionHandler.handleException(error),
        statusCode: error.response?.statusCode ?? -1,
      );
    }
  }

  @override
  Future<Response> delete(String path, {Map<String, dynamic>? queryParameters}) async {
    try {
      final response = await client.delete(
        path,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (error) {
      throw ServerFailure(
        message: RemoteExceptionHandler.handleException(error),
        statusCode: error.response?.statusCode ?? -1,
      );
    }
  }
}

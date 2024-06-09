import 'package:clean_architecture_structure/core/network/status_code.dart';
import 'package:clean_architecture_structure/core/utils/app_translation_key.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

abstract class RemoteExceptionHandler {
  static String handleException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return AppTranslationKey.connectionTimeout.tr();
      case DioExceptionType.sendTimeout:
        return AppTranslationKey.sendTimeout.tr();
      case DioExceptionType.receiveTimeout:
        return AppTranslationKey.receiveTimeout.tr();
      case DioExceptionType.badResponse:
        switch (error.response?.statusCode) {
          case StatusCode.badRequest:
            return AppTranslationKey.badRequest.tr();
          case StatusCode.unauthorized:
            return AppTranslationKey.unauthorized.tr();
          case StatusCode.forbidden:
            return AppTranslationKey.forbidden.tr();
          case StatusCode.notFound:
            return AppTranslationKey.notFound.tr();
          case StatusCode.conflict:
            return AppTranslationKey.conflict.tr();
          case StatusCode.internalServerError:
            return AppTranslationKey.internalServerError.tr();
          default:
            return AppTranslationKey.serverError.tr();
        }
      case DioExceptionType.cancel:
        return AppTranslationKey.cancel.tr();
      case DioExceptionType.unknown:
        return AppTranslationKey.unknown.tr();
      case DioExceptionType.badCertificate:
        return AppTranslationKey.badCertificate.tr();
      case DioExceptionType.connectionError:
        return AppTranslationKey.connectionError.tr();
      default:
        return AppTranslationKey.unexpectedError.tr();
    }
  }
}

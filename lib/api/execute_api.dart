import 'package:dio/dio.dart';
import 'package:ecommerce/domain/api_result.dart';
import 'package:ecommerce/domain/exceptions/exceptions.dart';

Future<Result<T>> executeApi<T>(Future<T> Function() apiCall) async {
  try {
    final response = await apiCall();
    return Success<T>(response);
  } on DioException catch (e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.connectionError:
        return Failure<T>(NoInternetException(message: 'no internet connection'));
      default:
        if (e.response != null) {
          return Failure<T>(ServerError(
            message: e.response?.data?['message'] ?? 'Server error',
            statusMsg: e.response?.data?['statusMsg'],
          ));
        }
        return Failure<T>(Exception('Something went wrong'));
    }
  } catch (e) {
    return Failure<T>(Exception(e.toString()));
  }
}
import 'package:dio/dio.dart';

String getDioErrorMessage(DioError error) {
  DioError dioError = error;
  switch (dioError.type) {
    case DioErrorType.connectTimeout:
    case DioErrorType.sendTimeout:
      return "Não foi possível se conectar aos serviços. Tente novamente";
    case DioErrorType.receiveTimeout:
      return "O serviço demorou demais a responder. Tente novamente";
    case DioErrorType.response:
      return dioError.message;
    default:
      return "Erro desconhecido";
  }
}

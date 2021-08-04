import 'dart:io';

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
    case DioErrorType.other:
      if (dioError.error is SocketException) {
        return "Você possui uma conexão de internet ativa? Verifique e tente novamente";
      }
      break;
    case DioErrorType.cancel:
      return "Por algum motivo a conexão com os dados foi cancelada durante a busca. Favor tentar novamente";
  }

  return "Erro desconhecido";
}

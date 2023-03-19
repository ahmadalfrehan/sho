

import '../utils/constants/urls.dart';
import 'Failure.dart';

class RemoteException extends Failure implements Exception {
  final ErrorCode errorCode;
  final String message;
  RemoteException(this.errorCode, this.message);
}
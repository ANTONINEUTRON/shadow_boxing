class Failure implements Exception {
  Failure({required this.message});

  final String message;
}

class NoPassageFoundException extends Failure {
  NoPassageFoundException() : super(message: "No passage found");
}

class NoRemotePassageFoundException extends Failure {
  NoRemotePassageFoundException()
      : super(message: "No passage found on the server");
}

class FileNotSelectedException extends Failure {
  FileNotSelectedException() : super(message: "No image was selected");
}

class OldPasswordNotMatchException extends Failure {
  OldPasswordNotMatchException() : super(message: "");
}

class AuthHandlerException extends Failure {
  AuthHandlerException(this.messageToShowUser)
      : super(message: messageToShowUser);

  final String messageToShowUser;
}

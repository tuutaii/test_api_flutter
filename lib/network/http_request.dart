abstract class GetRequest<T> {
  Future<T> perform();
}

abstract class PostRequest<T> {
  Future<T> perform(String body);
}

class HttpRequestException implements Exception {
  final String message;
  HttpRequestException(this.message);
}

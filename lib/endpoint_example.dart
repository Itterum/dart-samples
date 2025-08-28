sealed class Endpoint {
  const Endpoint();

  static const String baseUrl = 'https://example.com';

  String get path;

  Uri get url => Uri.parse('$baseUrl$path');
}

final class RegisterEndpoint extends Endpoint {
  const RegisterEndpoint();

  @override
  String get path => '/register';
}

void main() {
  final registerUrl = RegisterEndpoint().url;

  print(registerUrl);
}

void main(List<String> arguments) {
  var uri = Uri.parse('https://example.org:8080/foo/bar#frag');

  print(uri.scheme);
  print(uri.host);
  print(uri.path);
  print(uri.fragment);
  print(uri.origin);

  var newUri = Uri(
    scheme: 'https',
    host: 'example-new.org',
    path: '/foo/bar',
    queryParameters: {'lang': 'dart' },
  );

  print(newUri.toString());
}

import 'package:flutter_test/flutter_test.dart';
import 'package:aad_auth/aad_auth.dart';

void main() {
  final AuthContext context = new AuthContext(new Config(
    "tenant_id",
    "test",
    "http://localhost:8080/",
    "test",
    "test"
  )); 

  test('create instance of aad_auth', () {
    expect(context.config.tenantID, equals("tenant_id"));
  });

  test('create url', () {
    print(context.getReqUrl());

    return true;
  });

  test('request string builder', () {
    print(context.getReqString());

    return true;
  });

  test('signin', () {
    context.login();

    return true;
  });
}

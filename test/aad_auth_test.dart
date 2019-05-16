import 'package:flutter_test/flutter_test.dart';
import 'package:aad_auth/aad_auth.dart';

void main() {
/*   test('adds one to input values', () {
    final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1);
    expect(() => calculator.addOne(null), throwsNoSuchMethodError);
  }); */

  test('create instance of aad_auth', () {
    final AuthContext context = new AuthContext(new Config(
      "test",
      "test",
      "test",
      "test"
    )); 

    expect(context.config.tenantID, "test");
  });
}

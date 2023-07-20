import 'package:currency_converter/app/controllers/home_controller.dart';
import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  final TextEditingController toText = TextEditingController();
  final TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Should converter from real to dolar', () {
    toText.text = '2.0';

    homeController.converter();

    expect(fromText.text, '0.36');
  });
  test('Should converter from real to dolar if "," is provided', () {
    toText.text = '2,0';

    homeController.converter();

    expect(fromText.text, '0.36');
  });
  test('Should converter from dolar to real', () {
    toText.text = '1.0';
    homeController.toCurrency = const CurrencyModel(
        name: 'Dolar', real: 5.65, dolar: 1.0, euro: 0.85, bitcoin: 0.00088);
    homeController.fromCurrency = const CurrencyModel(
        name: 'Real', real: 1.0, dolar: 0.18, euro: 0.15, bitcoin: 0.00016);

    homeController.converter();

    expect(fromText.text, '5.65');
  });
}

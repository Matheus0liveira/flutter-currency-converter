import 'package:currency_converter/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class HomeController {
  List<CurrencyModel> currencies;
  CurrencyModel toCurrency;
  CurrencyModel fromCurrency;

  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  HomeController() {
    currencies = CurrencyModel.getCurrencies();
    toCurrency = currencies[0];
    fromCurrency = currencies[1];
  }

  void converter() {
    String text = toText.text;
    double value = double.tryParse(text) ?? 1.0;
    double returnValue = 0;

    switch (fromCurrency.name) {
      case ('Real'):
        returnValue = value * toCurrency.real;
        break;
      case ('Dolar'):
        returnValue = value * toCurrency.dolar;
        break;
      case ('Euro'):
        returnValue = value * toCurrency.euro;
        break;
      case ('Bitcoin'):
        returnValue = value * toCurrency.bitcoin;
        break;
    }

    fromText.text = returnValue.toStringAsFixed(2);
  }
}

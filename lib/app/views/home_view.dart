import 'package:currency_converter/app/components/currency_box.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() {
    return _HomeViewState();
  }
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
            padding: const EdgeInsets.only(
                left: 20, right: 20, top: 100, bottom: 20),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Image.asset('assets/images/logo.png', width: 150)),
                const CurrecyBox(),
                const SizedBox(height: 20),
                const CurrecyBox(),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                      ),
                      child: const SizedBox(
                        width: double.infinity,
                        child: Text(
                          'COVERTER',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )),
                )
              ],
            )),
      ),
    );
  }
}

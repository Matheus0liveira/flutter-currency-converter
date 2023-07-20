import 'package:flutter/material.dart';

class CurrecyBox extends StatelessWidget {
  const CurrecyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Expanded(
        flex: 1,
        child: SizedBox(
          height: 56.5,
          child: DropdownButton(
            value: 'real',
            isExpanded: true,
            underline: Container(
              height: 1,
              color: Colors.amber,
            ),
            items: const [
              DropdownMenuItem(
                value: 'real',
                child: Text('Real'),
              ),
              DropdownMenuItem(
                value: 'dolar',
                child: Text('Dolar'),
              )
            ],
            onChanged: (value) {},
          ),
        ),
      ),
      const SizedBox(width: 20),
      Expanded(
          flex: 2,
          child: TextField(
            onChanged: (value) {},
            decoration: const InputDecoration(
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.amber)),
            ),
          )),
    ]);
  }
}

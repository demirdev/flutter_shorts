import 'package:flutter/material.dart';

const List<Color> colors = [
  Color(0xFFE6371D),
  Color(0xFF71B00D),
  Color(0xFF118FE7),
  Color(0xFFFEAB0B),
];

const width = 120;
const gap = 8.0;
const textColor = Color(0xFF535353);

class MicrosoftLogo extends StatelessWidget {
  const MicrosoftLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: gap,
                    crossAxisSpacing: gap,
                  ),
                  children: [
                    for (final color in colors) Container(color: color),
                  ],
                ),
              ),
            ),
          ),
          Text(
            'Microsoft',
            style: TextStyle(
              fontFamily: 'Segoe',
              fontSize: 40,
              color: textColor,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}

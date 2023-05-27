import 'dart:math';

import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final int maxCharsPerLine;

  CustomTextWidget({required this.text, this.maxCharsPerLine = 100});

  @override
  Widget build(BuildContext context) {
    return Text(
      formatText(text),
      softWrap: true,
      style: TextStyle(height: 1.5),
    );
  }

  String formatText(String text) {
    final words = text.split('@');

    return words.map((word) {
      if (word.length > maxCharsPerLine) {
        final chars = word.split('');

        final List<String> lines = [];
        for (var i = 0; i < chars.length; i += maxCharsPerLine) {
          lines.add(chars.sublist(i, min(i + maxCharsPerLine, chars.length)).join());
        }

        return lines.join('\n');
      } else {
        return word;
      }
    }).join('\n');
  }
}

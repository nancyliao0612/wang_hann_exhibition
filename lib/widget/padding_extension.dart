import 'package:flutter/material.dart';

extension WidgetX on Widget {
  Widget get blackBackgroundPadding => ColoredBox(
        color: const Color(0xFF202020),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
          child: this,
        ),
      );

  Widget get whiteBackgroundPadding => ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 36),
          child: this,
        ),
      );
}

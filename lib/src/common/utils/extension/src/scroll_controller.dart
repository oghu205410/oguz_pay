import 'package:flutter/material.dart';

extension ScrollControllerX on ScrollController {
  bool get isBottom {
    if (!hasClients) return false;

    final maxScroll = position.maxScrollExtent;
    final currentScroll = offset;

    return currentScroll >= (maxScroll * 0.9);
  }
}

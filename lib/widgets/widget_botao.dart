// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class WidgetBotao extends StatelessWidget {
  const WidgetBotao({
    Key? key,
    this.onTap,
    required this.child,
  }) : super(key: key);

  final void Function()? onTap;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12.0),
        ),
        padding: const EdgeInsets.all(25.0),
        child: child,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class InkWellWrapper extends StatelessWidget {
  const InkWellWrapper({
    super.key,
    this.onTap,
    this.child,
    this.borderRadius,
    this.splashColor,
  });

  final void Function()? onTap;
  final Widget? child;
  final BorderRadius? borderRadius;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        highlightColor: splashColor?.withOpacity(.15),
        splashColor: splashColor?.withOpacity(.1),
        borderRadius: borderRadius,
        onTap: onTap,
        child: child,
      ),
    );
  }
}

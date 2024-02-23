import 'package:flutter/material.dart';

class PaddingAll24 extends StatelessWidget {
  final Widget? child;
  const PaddingAll24({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: child,
    );
  }
}

class PaddingLeft24 extends StatelessWidget {
  final Widget? child;
  const PaddingLeft24({
    super.key, this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: child,
    );
  }
}

class PaddingAll12 extends StatelessWidget {
  final Widget? child;
  const PaddingAll12({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: child,
    );
  }
}


class PaddingTop8 extends StatelessWidget {
  final Widget? child;
  const PaddingTop8({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: child,
    );
  }
}

class PaddingTop24 extends StatelessWidget {
  final Widget? child;
  const PaddingTop24({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24),
      child: child,
    );
  }
}
import 'package:flutter/material.dart';

class TranslationOnHover extends StatefulWidget {
  final Widget child;
  TranslationOnHover({Key key, this.child}) : super(key: key);
  @override
  _TranslationOnHoverState createState() => _TranslationOnHoverState();
}

class _TranslationOnHoverState extends State<TranslationOnHover> {
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(0, -5, 0);

  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) => _mouseEnter(true),
      onExit: (e) => _mouseEnter(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: widget.child,
        transform: _hovering ? hoverTransform : nonHoverTransform,
      ),
    );
  }

  void _mouseEnter(bool hovering) {
    setState(() {
      _hovering = hovering;
    });
  }
}

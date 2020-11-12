import 'package:flutter/material.dart';
import 'dart:html' as html;

extension MouseAction on Widget{

static final appContainer = html.window.document.getElementById('app-container');


  Widget onMouseHover(VoidCallback onEnter, VoidCallback onExit ){
      return MouseRegion(
        onEnter:(_){
          onEnter();
        },
        onHover: (_){
          appContainer.style.cursor='pointer';
        },
        onExit: (_){
          onExit();
          appContainer.style.cursor='default';
        },
        child: this,
      );
  }
}
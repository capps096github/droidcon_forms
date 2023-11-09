import 'package:flutter/material.dart';

import 'dart:math' as math;

// droidcon Color
const droidconColor = Color(0xFF32DE84);

// droidcon secondary color
const droidconSecondaryColor = Color(0xFF000000);

// droidcon background
const droidconBackground = Color(0xFF200E32);

// droidcon white
const droidconWhite = Color(0xFFFFFFFF);

// red
const droidconRed = Color(0xFFCD0000);

// error color
const errorColor = Color(0xFF8A0301);

// error yellow
const errorYellow = Color(0xFFFFFF00);

// droidcon black
const droidconBlack = Color(0xFF000000);

// droidcon transparent
const droidconTransparent = Colors.transparent;

// droidcon random color
Color get droidconRandomColor =>
    Color((math.Random().nextDouble() * 0xFFE3EEFE).toInt()).withOpacity(1.0);

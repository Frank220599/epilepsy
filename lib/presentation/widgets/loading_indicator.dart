import 'package:flutter/material.dart';
import '../../domain/config/colors.dart';

cirularLoading() => CircularProgressIndicator(
      valueColor: AlwaysStoppedAnimation<Color>(Palette.purple),
    );

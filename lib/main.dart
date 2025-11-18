import 'package:flutter/material.dart';
import 'package:nakhla/core/routing/app_router.dart';
import 'package:nakhla/nakhla_app.dart';

void main() {
  runApp(
    Nakhla(
      appRouter: AppRouter(),
    ),
  );
}

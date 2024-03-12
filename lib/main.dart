import 'package:bloc/bloc.dart';
import 'package:bookly_app/bloc_observer.dart';
import 'package:bookly_app/bookly_app.dart';
import 'package:bookly_app/core/routing/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(BooklyApp(appRouter: AppRouter(),));
}

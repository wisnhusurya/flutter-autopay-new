import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'blocs/blocs.dart';
import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [BlocProvider(create: (_) => ThemeBloc())],
        child: BlocBuilder<ThemeBloc, ThemeState>(
            builder: (_, themeState) => GetMaterialApp(
                theme: themeState.themeData,
                debugShowCheckedModeBanner: false,
                home: SplashPage())));
  }
}

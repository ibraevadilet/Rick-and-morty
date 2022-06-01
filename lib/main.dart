import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:rick_test/features/presentation/widgets/app_unfocuser.dart';
import 'package:rick_test/theme/app_theme.dart';

import 'features/data/dio_interceptor.dart';
import 'routes/routes.gr.dart';

void main() {
  runApp(const Rick());
  GetIt.I.registerSingleton(ApiRequester());
}

final _appRouter = MobileAppRouter();

class Rick extends StatefulWidget {
  const Rick({Key? key}) : super(key: key);

  @override
  State<Rick> createState() => _RickState();
}

class _RickState extends State<Rick> {
  @override
  Widget build(BuildContext context) {
    return AppUnfocuser(
      child: Builder(builder: (context) {
        return MaterialApp.router(
          theme: AppTheme.theme,
          title: 'Rick and Morty test',
          debugShowCheckedModeBanner: false,
          routeInformationParser: _appRouter.defaultRouteParser(),
          routerDelegate: _appRouter.delegate(),
          routeInformationProvider: _appRouter.routeInfoProvider(),
        );
      }),
    );
  }
}

// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:geat/app/provider/provider.dart';
import 'package:geat/app/router/app_router.dart';
import 'package:geat/app/router/app_router.gr.dart';

import 'package:geat/auth/auth.dart';
import 'package:geat/comment/comment.dart';
import 'package:geat/counter/counter.dart';
import 'package:geat/feed/feed.dart';
import 'package:geat/l10n/l10n.dart';
import 'package:geat/notification/notification.dart';
import 'package:geat/profile/view/profile_page.dart';
import 'package:geat/search/search.dart';
import 'package:geat/settings/settings.dart';
import 'package:geat/splash/splash.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends ConsumerWidget {
  App({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //final router = ref.watch(goRouterProvider);
    final appTheme = ref.read(appThemeProvider);
    return MaterialApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      theme: appTheme.themeData,
      //darkTheme: appTheme.darkTheme,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      //home: const CommentPage(),
      //routerConfig: router,
    );
  }
}

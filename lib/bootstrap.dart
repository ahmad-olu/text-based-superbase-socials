// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  //Bloc.observer = AppBlocObserver();
  //Todo: add riverpod observer here

  await runZonedGuarded(
    () async => runApp(await builder()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

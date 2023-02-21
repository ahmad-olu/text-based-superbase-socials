// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'dart:developer';

import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_datastore/amplify_datastore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/app.dart';
import 'package:geat/bootstrap.dart';

import 'package:geat/firebase_options_dev.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  bootstrap(() => ProviderScope(observers: [Logger()], child: App()));
}

// Future<void> configureAmplify() async {

//     await Amplify.addPlugins([
//       AmplifyAuthCognito(),
//       AmplifyAnalyticsPinpoint(),
//       AmplifyAPI(modelProvider: ModelProvider.instance),
//       AmplifyDataStore(modelProvider: ModelProvider.instance),
//       AmplifyStorageS3(),
//     ]);
//     try {
//       await Amplify.configure(amplifyconfig);
//     } on AmplifyAlreadyConfiguredException {
//       throw Exception("Tried to reconfigure Amplify; this can occur when your app restarts on Android.");
//     }
//   }

class Logger extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    log('''
========================================================
"Provider":"${provider.name ?? provider.runtimeType}"
"newValue": "$newValue"
=========================================================
''');
  }
}

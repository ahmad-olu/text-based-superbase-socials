// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:geat/bootstrap.dart';
import 'package:geat/core/core.dart';
import 'package:geat/injection.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.dev);
  bootstrap(
    () => const AppWidget(),
  );
}

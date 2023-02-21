import 'package:geat/app/helper/helper.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final tokenProvider = Provider<TokenManager>((_) => TokenManager.instance);

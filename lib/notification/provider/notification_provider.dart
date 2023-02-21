import 'dart:async';

import 'package:geat/app/model/model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final notificationProvider = StreamProvider<List<Notification>>((ref) {
  final controller = StreamController<List<Notification>>();
  controller.onListen = () {
    controller.sink.add([]);
  };
  // final sub =
  //     questionRepo.getUsersQuestions(userId: userId, controller: controller);

  //controller.sink.add(tests);
  ref.onDispose(() {
    //sub.cancel();
    controller.close();
  });
  return controller.stream;
});

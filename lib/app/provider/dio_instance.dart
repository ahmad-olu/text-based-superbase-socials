import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioInstanceProvider = Provider<Dio>((_) => Dio());

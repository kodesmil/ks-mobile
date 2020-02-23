import 'package:lib_di/di/features/local_module.dart';
import 'package:lib_di/di/features/netwok_module.dart';
import 'package:feat_auth/di/auth_module.dart';

final networkModule = NetworkModule();
final localModule = LocalModule();
final authLocalModule = AuthLocalModule();

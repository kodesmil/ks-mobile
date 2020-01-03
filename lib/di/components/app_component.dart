import 'package:lib_auth/di/modules/auth_module.dart';
import 'package:lib_di/di/modules/local_module.dart';
import 'package:lib_di/di/modules/netwok_module.dart';

final networkModule = NetworkModule();
final localModule = LocalModule();
final authLocalModule = AuthLocalModule();

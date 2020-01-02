import 'package:inject/inject.dart';
import 'package:lib_auth/di/data/network/apis/posts/token_api.dart';
import 'package:lib_auth/di/data/network/apis/posts/user_api.dart';
import 'package:lib_auth/di/data/sharedpref/shared_preference_helper.dart';
import 'package:lib_auth/di/modules/auth_module.dart';

import 'app_component.inject.dart' as g;

/// The top level injector that stitches together multiple app features into
/// a complete app.
@Injector(const [])
abstract class AuthComponent {
  static Future<AuthComponent> create(
    AuthModule authModule,
  ) async {
    return await g.AuthComponent$Injector.create(
      authModule,
    );
  }

  @provide
  TokenApi getTokenApi();

  @provide
  UserApi getUserApi();

  @provide
  SharedPreferenceHelper getSharedPreferenceHelper();
}

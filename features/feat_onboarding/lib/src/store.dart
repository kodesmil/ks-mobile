import 'package:feat_auth/feat_auth.dart';
import 'package:mobx/mobx.dart';

part 'store.g.dart';

class OnboardingStore = _OnboardingStore with _$OnboardingStore;

abstract class _OnboardingStore with Store {
  final AuthStorage authStorage;

  _OnboardingStore(this.authStorage);

  @action
  Future onboardingDisplayed() async {
    await authStorage.setHasSeenOnboarding();
  }
}

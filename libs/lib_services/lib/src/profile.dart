import 'generated/github.com/kodesmil/ks-model/profile.pb.dart';

extension ExProfile on Profile {
  String get initials {
    return '${firstName[0]} ${lastName[0]}';
  }

  String get fullName {
    return '$firstName $lastName';
  }
}

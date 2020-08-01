import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:lib_lego/lib_lego.dart';
import 'package:provider/provider.dart';
import 'package:feat_storage/feat_storage.dart';
import 'package:lib_services/lib_services.dart';

import 'store.dart';

class ProfileSettingsTile extends StatefulWidget {
  ProfileSettingsTile();

  @override
  _ProfileSettingsTileState createState() => _ProfileSettingsTileState();
}

class _ProfileSettingsTileState extends State<ProfileSettingsTile> {
  final _emailController = TextEditingController();

  @override
  void didChangeDependencies() {
    final store = Provider.of<ProfileStore>(context);
    store.fetchProfile();
    _emailController.addListener(() {
      store.profile.primaryEmail = _emailController.text;
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ProfileStore>(context);
    return Observer(
      builder: (context) => store.profile == null
          ? Container()
          : Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 15),
                  Text(
                    store.profile?.fullName?.isNotEmpty == true
                        ? store.profile.fullName
                        : 'Anonymous',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(height: 25),
                  StoragePictureSelectWidget(
                    onFileUploaded: (url) => store.updateProfile(url: url),
                    child: KsCircleAvatar(
                      size: 150,
                      image: store.profile.profilePictureUrl,
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
    );
  }
}

class ProfileAvatar extends StatefulWidget {
  ProfileAvatar();

  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {

  @override
  void didChangeDependencies() {
    final store = Provider.of<ProfileStore>(context);
    store.fetchProfile();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<ProfileStore>(context);
    return KsCircleAvatar(
      size: 150,
      image: store.profile?.profilePictureUrl ?? '',
    );
  }
}

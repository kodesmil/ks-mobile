import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'store.dart';

class NotificationsSettings extends StatefulWidget {
  @override
  _NotificationsSettingsState createState() => _NotificationsSettingsState();
}

class _NotificationsSettingsState extends State<NotificationsSettings> {
  @override
  void didChangeDependencies() {
    final store = Provider.of<NotificationSettingsStore>(context);
    store.readOrCreate();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<NotificationSettingsStore>(context);
    return Observer(
      builder: (context) => store.setting != null
          ? Column(
              children: [
                ListTile(
                  leading: Text(
                    'Notifications',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SwitchListTile(
                  value: store.setting.enableNotifications,
                  title: Text(
                    'Send me notifications',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  onChanged: (value) {
                    store.setting.enableNotifications = value;
                    store.update();
                  },
                ),
                ListTile(
                  leading: Text(
                    'Reminders',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ),
                SwitchListTile(
                  value: store.setting.enableJournalReminder,
                  title: Text(
                    'Daily Journal',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  onChanged: (value) {
                    store.setting.enableJournalReminder = value;
                    store.update();
                  },
                ),
                ListTile(
                  leading: Text(
                    'Reminder time',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}

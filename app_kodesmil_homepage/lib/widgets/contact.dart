import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/textfields.dart';
import 'package:lib_lego/texts.dart';
import 'package:lib_locale/localizations.dart';
import 'package:lib_lego/gradients.dart';
import 'dart:js';

String loremIpsum = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
    'Proin sem purus, hendrerit in pellentesque congue, eleifend ut quam. '
    'Vestibulum bibendum mollis fermentum. '
    'Aliquam quam eros, placerat vitae nulla eu.';

class ContactWidget extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: KsDimension.xxl),
        width: MediaQuery.of(ctx).size.width * 0.3,
        child: ContactForm(),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  bool privacyValue = false;
  bool newsletterValue = false;

  TextEditingController textController;

  @override
  void initState() {
    textController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext ctx) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Do you want more information?',
          style: Theme.of(ctx).textTheme.display1.copyWith(
            color: Theme.of(ctx).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
          ),
        ),
        KsSpace.xs(),
        Text(
          'Leave us your email.',
          style: Theme.of(ctx).textTheme.body2.copyWith(
            color: Theme.of(ctx).colorScheme.onBackground,
            fontWeight: FontWeight.bold,
          ),
        ),
        KsSpace.l(),
        KsTextField(
          icon: Icons.email,
          hint: 'Email',
          textController: textController,
          autoFocus: true,
        ),
        KsSpace.m(),
        Text(
          'KodeSmil is committed to protecting and respecting your privacy, '
          'and we’ll only use your personal information to administer your account '
          'and to provide the products and services you requested from us. '
          'From time to time, we would like to contact you about our products and services, '
          'as well as other content that may be of interest to you. '
          'If you consent to us contacting you for this purpose, '
          'please tick below to say how you would like us to '
          'contact you:',
          style: Theme.of(ctx).textTheme.caption.copyWith(
                color: Theme.of(ctx).colorScheme.onBackground,
              ),
        ),
        CheckboxListTile(
          title: Text(
            'I agree to receive marketing communications from KodeSmil.',
            style: Theme.of(ctx).textTheme.caption.copyWith(
                  color: Theme.of(ctx).colorScheme.onBackground,
                ),
          ),
          value: newsletterValue,
          onChanged: (value) {
            setState(() {
              newsletterValue = value;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        Text(
          'In order to provide you the content requested, we need to store and process your personal data. '
          'If you consent to us storing your personal data for this purpose, '
          'please tick the checkbox below.',
          style: Theme.of(ctx).textTheme.caption.copyWith(
                color: Theme.of(ctx).colorScheme.onBackground,
              ),
        ),
        CheckboxListTile(
          title: Text(
            '* I agree to allow KodeSmil to store and process my personal '
                'data.',
            style: Theme.of(ctx).textTheme.caption.copyWith(
                  color: Theme.of(ctx).colorScheme.onBackground,
                ),
          ),
          value: privacyValue,
          onChanged: (value) {
            setState(() {
              privacyValue = value;
            });
          },
          controlAffinity: ListTileControlAffinity.leading,
        ),
        Text(
          'You can unsubscribe from these communications at any time. '
          'For more information on how to unsubscribe, our privacy practices, '
          'and how we are committed to protecting and respecting your privacy, '
          'please review our Privacy Policy.',
          style: Theme.of(ctx).textTheme.caption.copyWith(
                color: Theme.of(ctx).colorScheme.onBackground,
              ),
        ),
        KsSpace.m(),
        RaisedButton(
          child: Text('Request contact'),
          onPressed: () {
            if (!privacyValue) {
              // Please accept privacy consent
              return;
            }
            final email = 'marcin+1003@kodesmil.com';
            return context.callMethod(
              'formv3',
              [email, newsletterValue],
            );
          },
        )
      ],
    );
  }
}

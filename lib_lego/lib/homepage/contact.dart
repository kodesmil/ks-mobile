import 'package:flutter/material.dart';
import 'package:lib_lego/dimensions.dart';
import 'package:lib_lego/spaces.dart';
import 'package:lib_lego/textfields.dart';
import 'dart:js';

class ContactWidget extends StatelessWidget {
  final String companyName;

  const ContactWidget({
    Key key,
    this.companyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: KsDimension.xxl),
        width: size.width > 600 ? 500 : size.width * 0.8,
        child: ContactForm(
          companyName: this.companyName,
        ),
      ),
    );
  }
}

class ContactForm extends StatefulWidget {
  final String companyName;

  const ContactForm({
    Key key,
    this.companyName,
  }) : super(key: key);

  @override
  _ContactFormState createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  bool privacyValue = false;
  bool newsletterValue = false;
  String email = '';

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
        RichText(
            text: TextSpan(
                text: 'Would you like to receive\n',
                style: Theme.of(ctx).textTheme.display1.copyWith(
                      color: Theme.of(ctx).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
                children: [
              TextSpan(
                text: 'more ',
                style: Theme.of(ctx).textTheme.display1.copyWith(
                      color: Theme.of(ctx).colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              TextSpan(
                text: 'information?',
                style: Theme.of(ctx).textTheme.display1.copyWith(
                      color: Theme.of(ctx).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                    ),
              )
            ])),
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
          onFieldChanged: (value) {
            setState(() {
              email = value;
            });
          },
          autoFocus: true,
        ),
        KsSpace.m(),
        Text(
          '${widget.companyName} is committed to protecting and respecting your privacy, '
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
            'I agree to receive marketing communications from ${widget.companyName}.',
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
            '* I agree to allow ${widget.companyName} to store and process my personal '
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
              final snackBar = SnackBar(
                content: Text(
                  'Please accept Privacy Policy consent.',
                ),
              );
              Scaffold.of(ctx).showSnackBar(snackBar);
              return;
            }
            final snackBar = SnackBar(
              content: Text(
                'Thank you. We will contact you as soon as possible.',
              ),
            );
            Scaffold.of(ctx).showSnackBar(snackBar);
            return context.callMethod(
              'formv3',
              [
                email,
                newsletterValue,
              ],
            );
          },
        )
      ],
    );
  }
}

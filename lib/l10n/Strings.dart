import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

import 'messages_all.dart';

class Strings {
  static Future<Strings> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    // ignore: strong_mode_uses_dynamic_as_bottom
    return initializeMessages(localeName).then((Null _) {
      Intl.defaultLocale = localeName;
      return new Strings();
    });
  }

  static Strings of(BuildContext context) {
    return Localizations.of<Strings>(context, Strings);
  }

  static final Strings instance = new Strings();

  // TODO 追加すべき文言
  String get title => Intl.message('Flutter Demo Home Page', name: "title");
  String get message => Intl.message('You have pushed the button this many times:', name: "message");
}

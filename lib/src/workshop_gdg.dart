library workshopgdg;

import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'models/user.dart';
part 'pages/home_page.dart';
part 'pages/login_page.dart';
part 'pages/root_page.dart';
part 'pages/user_details_page.dart';
part 'services/auth.dart';
part 'widgets/home_bottom_navigation_bar.dart';
part 'widgets/home_drawer.dart';
part 'widgets/primary_button.dart';
part 'widgets/row_padded.dart';
part 'widgets/show_login_dialog.dart';
part 'widgets/user_circle_avatar.dart';

class WorkshopGDGApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Workshop GDG',
      theme: new ThemeData(
        primarySwatch: Colors.red[400],
      ),
      home: new RootPage(auth: new Auth()),
    );
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:async';
import 'dart:ui';
import '/index.dart';
import 'create_account5_widget.dart' show CreateAccount5Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAccount5Model extends FlutterFlowModel<CreateAccount5Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for mail widget.
  FocusNode? mailFocusNode;
  TextEditingController? mailTextController;
  String? Function(BuildContext, String?)? mailTextControllerValidator;
  // State field(s) for pass widget.
  FocusNode? passFocusNode;
  TextEditingController? passTextController;
  late bool passVisibility;
  String? Function(BuildContext, String?)? passTextControllerValidator;
  // State field(s) for confpass widget.
  FocusNode? confpassFocusNode;
  TextEditingController? confpassTextController;
  late bool confpassVisibility;
  String? Function(BuildContext, String?)? confpassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passVisibility = false;
    confpassVisibility = false;
  }

  @override
  void dispose() {
    mailFocusNode?.dispose();
    mailTextController?.dispose();

    passFocusNode?.dispose();
    passTextController?.dispose();

    confpassFocusNode?.dispose();
    confpassTextController?.dispose();
  }
}

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_new_customer_widget.dart' show CreateNewCustomerWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateNewCustomerModel extends FlutterFlowModel<CreateNewCustomerWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for customerName widget.
  TextEditingController? customerNameController;
  String? Function(BuildContext, String?)? customerNameControllerValidator;
  String? _customerNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rv3ib77b' /* Field is required */,
      );
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'tlfc9ljh' /* Field is required */,
      );
    }
    return null;
  }

  // State field(s) for customerEmail widget.
  TextEditingController? customerEmailController;
  String? Function(BuildContext, String?)? customerEmailControllerValidator;
  String? _customerEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'rwvw9aom' /* Field is required */,
      );
    }

    if (val.length < 2) {
      return 'Requires at least 2 characters.';
    }

    return null;
  }

  // State field(s) for customerNumber widget.
  TextEditingController? customerNumberController;
  String? Function(BuildContext, String?)? customerNumberControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    customerNameControllerValidator = _customerNameControllerValidator;
    customerEmailControllerValidator = _customerEmailControllerValidator;
  }

  void dispose() {
    customerNameController?.dispose();
    customerEmailController?.dispose();
    customerNumberController?.dispose();
  }

  /// Action blocks are added here.

  Future importContact(BuildContext context) async {}

  /// Additional helper methods are added here.
}

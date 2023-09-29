import '/backend/backend.dart';
import '/components/quick_services_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for quickServices component.
  late QuickServicesModel quickServicesModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    quickServicesModel = createModel(context, () => QuickServicesModel());
  }

  void dispose() {
    quickServicesModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

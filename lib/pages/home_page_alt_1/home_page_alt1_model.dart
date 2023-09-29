import '/components/quick_services_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_page_alt1_widget.dart' show HomePageAlt1Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageAlt1Model extends FlutterFlowModel<HomePageAlt1Widget> {
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

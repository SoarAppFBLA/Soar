import '/flutter_flow/flutter_flow_util.dart';
import 'whatin_athletics_widget.dart' show WhatinAthleticsWidget;
import 'package:flutter/material.dart';

class WhatinAthleticsModel extends FlutterFlowModel<WhatinAthleticsWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for fromDate widget.
  FocusNode? fromDateFocusNode;
  TextEditingController? fromDateTextController;
  String? Function(BuildContext, String?)? fromDateTextControllerValidator;
  // State field(s) for toDate widget.
  FocusNode? toDateFocusNode;
  TextEditingController? toDateTextController;
  String? Function(BuildContext, String?)? toDateTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fromDateFocusNode?.dispose();
    fromDateTextController?.dispose();

    toDateFocusNode?.dispose();
    toDateTextController?.dispose();
  }
}

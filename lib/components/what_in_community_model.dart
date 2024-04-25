import '/flutter_flow/flutter_flow_util.dart';
import 'what_in_community_widget.dart' show WhatInCommunityWidget;
import 'package:flutter/material.dart';

class WhatInCommunityModel extends FlutterFlowModel<WhatInCommunityWidget> {
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

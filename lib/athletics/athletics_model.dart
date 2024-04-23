import '/flutter_flow/flutter_flow_util.dart';
import 'athletics_widget.dart' show AthleticsWidget;
import 'package:flutter/material.dart';

class AthleticsModel extends FlutterFlowModel<AthleticsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

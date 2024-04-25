import '/flutter_flow/flutter_flow_util.dart';
import 'awards_widget.dart' show AwardsWidget;
import 'package:flutter/material.dart';

class AwardsModel extends FlutterFlowModel<AwardsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

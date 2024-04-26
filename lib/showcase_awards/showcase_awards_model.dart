import '/flutter_flow/flutter_flow_util.dart';
import 'showcase_awards_widget.dart' show ShowcaseAwardsWidget;
import 'package:flutter/material.dart';

class ShowcaseAwardsModel extends FlutterFlowModel<ShowcaseAwardsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

import '/flutter_flow/flutter_flow_util.dart';
import 'clubs_widget.dart' show ClubsWidget;
import 'package:flutter/material.dart';

class ClubsModel extends FlutterFlowModel<ClubsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

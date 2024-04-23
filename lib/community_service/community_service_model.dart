import '/flutter_flow/flutter_flow_util.dart';
import 'community_service_widget.dart' show CommunityServiceWidget;
import 'package:flutter/material.dart';

class CommunityServiceModel extends FlutterFlowModel<CommunityServiceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

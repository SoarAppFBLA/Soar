import '/flutter_flow/flutter_flow_util.dart';
import 'add_community_service_widget.dart' show AddCommunityServiceWidget;
import 'package:flutter/material.dart';

class AddCommunityServiceModel
    extends FlutterFlowModel<AddCommunityServiceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for Details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;
  // State field(s) for hours widget.
  FocusNode? hoursFocusNode;
  TextEditingController? hoursTextController;
  String? Function(BuildContext, String?)? hoursTextControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for resultF widget.
  FocusNode? resultFFocusNode;
  TextEditingController? resultFTextController;
  String? Function(BuildContext, String?)? resultFTextControllerValidator;
  // State field(s) for resultT widget.
  FocusNode? resultTFocusNode;
  TextEditingController? resultTTextController;
  String? Function(BuildContext, String?)? resultTTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();

    hoursFocusNode?.dispose();
    hoursTextController?.dispose();

    resultFFocusNode?.dispose();
    resultFTextController?.dispose();

    resultTFocusNode?.dispose();
    resultTTextController?.dispose();
  }
}

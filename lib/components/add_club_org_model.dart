import '/flutter_flow/flutter_flow_util.dart';
import 'add_club_org_widget.dart' show AddClubOrgWidget;
import 'package:flutter/material.dart';

class AddClubOrgModel extends FlutterFlowModel<AddClubOrgWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for Role widget.
  FocusNode? roleFocusNode;
  TextEditingController? roleTextController;
  String? Function(BuildContext, String?)? roleTextControllerValidator;
  // State field(s) for Details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;
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

    roleFocusNode?.dispose();
    roleTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();

    resultFFocusNode?.dispose();
    resultFTextController?.dispose();

    resultTFocusNode?.dispose();
    resultTTextController?.dispose();
  }
}

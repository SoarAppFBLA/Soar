import '/flutter_flow/flutter_flow_util.dart';
import 'academic_calc_widget.dart' show AcademicCalcWidget;
import 'package:flutter/material.dart';

class AcademicCalcModel extends FlutterFlowModel<AcademicCalcWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for unweightedGPA widget.
  FocusNode? unweightedGPAFocusNode;
  TextEditingController? unweightedGPATextController;
  String? Function(BuildContext, String?)? unweightedGPATextControllerValidator;
  // State field(s) for weightedGPA widget.
  FocusNode? weightedGPAFocusNode;
  TextEditingController? weightedGPATextController;
  String? Function(BuildContext, String?)? weightedGPATextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    unweightedGPAFocusNode?.dispose();
    unweightedGPATextController?.dispose();

    weightedGPAFocusNode?.dispose();
    weightedGPATextController?.dispose();
  }
}

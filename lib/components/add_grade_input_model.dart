import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_grade_input_widget.dart' show AddGradeInputWidget;
import 'package:flutter/material.dart';

class AddGradeInputModel extends FlutterFlowModel<AddGradeInputWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for yearTaken widget.
  String? yearTakenValue;
  FormFieldController<String>? yearTakenValueController;
  // State field(s) for className widget.
  FocusNode? classNameFocusNode;
  TextEditingController? classNameTextController;
  String? Function(BuildContext, String?)? classNameTextControllerValidator;
  // State field(s) for typeOfClass widget.
  String? typeOfClassValue;
  FormFieldController<String>? typeOfClassValueController;
  // State field(s) for grade widget.
  String? gradeValue;
  FormFieldController<String>? gradeValueController;
  // State field(s) for details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    classNameFocusNode?.dispose();
    classNameTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();
  }
}

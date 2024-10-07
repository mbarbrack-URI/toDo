import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for signup widget.
  FocusNode? signupFocusNode;
  TextEditingController? signupTextController;
  String? Function(BuildContext, String?)? signupTextControllerValidator;
  String? _signupTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for signuppassword widget.
  FocusNode? signuppasswordFocusNode;
  TextEditingController? signuppasswordTextController;
  late bool signuppasswordVisibility;
  String? Function(BuildContext, String?)?
      signuppasswordTextControllerValidator;
  String? _signuppasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for confirmSignup widget.
  FocusNode? confirmSignupFocusNode;
  TextEditingController? confirmSignupTextController;
  late bool confirmSignupVisibility;
  String? Function(BuildContext, String?)? confirmSignupTextControllerValidator;
  String? _confirmSignupTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? emailTextController2;
  String? Function(BuildContext, String?)? emailTextController2Validator;
  String? _emailTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  String? _passwordTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 7) {
      return 'Requires at least 7 characters.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (sendEmailToUser)] action in Signup widget.
  ApiCallResponse? apiResult7bw;

  @override
  void initState(BuildContext context) {
    signupTextControllerValidator = _signupTextControllerValidator;
    signuppasswordVisibility = false;
    signuppasswordTextControllerValidator =
        _signuppasswordTextControllerValidator;
    confirmSignupVisibility = false;
    confirmSignupTextControllerValidator =
        _confirmSignupTextControllerValidator;
    emailTextController2Validator = _emailTextController2Validator;
    passwordVisibility = false;
    passwordTextController2Validator = _passwordTextController2Validator;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupFocusNode?.dispose();
    signupTextController?.dispose();

    signuppasswordFocusNode?.dispose();
    signuppasswordTextController?.dispose();

    confirmSignupFocusNode?.dispose();
    confirmSignupTextController?.dispose();

    textFieldFocusNode1?.dispose();
    emailTextController2?.dispose();

    textFieldFocusNode2?.dispose();
    passwordTextController2?.dispose();
  }
}

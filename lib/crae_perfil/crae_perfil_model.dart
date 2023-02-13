import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CraePerfilModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Usuario widget.
  TextEditingController? usuarioController;
  String? Function(BuildContext, String?)? usuarioControllerValidator;
  String? _usuarioControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Ocupado';
    }
    return null;
  }

  // State field(s) for nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  String? _nombreControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Tu nombre ';
    }

    return null;
  }

  // State field(s) for apellido widget.
  TextEditingController? apellidoController;
  String? Function(BuildContext, String?)? apellidoControllerValidator;
  String? _apellidoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for biografia widget.
  TextEditingController? biografiaController;
  String? Function(BuildContext, String?)? biografiaControllerValidator;
  String? _biografiaControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for estado widget.
  String? estadoValue;
  // State field(s) for municipio widget.
  String? municipioValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    usuarioControllerValidator = _usuarioControllerValidator;
    nombreControllerValidator = _nombreControllerValidator;
    apellidoControllerValidator = _apellidoControllerValidator;
    biografiaControllerValidator = _biografiaControllerValidator;
  }

  void dispose() {
    usuarioController?.dispose();
    nombreController?.dispose();
    apellidoController?.dispose();
    biografiaController?.dispose();
  }

  /// Additional helper methods are added here.

}

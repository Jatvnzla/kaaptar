import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CraerPerfilProfecionalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for ChoiceChips widget.
  List<String>? choiceChipsValues1;
  // State field(s) for Usuario widget.
  TextEditingController? usuarioController;
  String? Function(BuildContext, String?)? usuarioControllerValidator;
  // State field(s) for nombre widget.
  TextEditingController? nombreController;
  String? Function(BuildContext, String?)? nombreControllerValidator;
  // State field(s) for apellido widget.
  TextEditingController? apellidoController;
  String? Function(BuildContext, String?)? apellidoControllerValidator;
  // State field(s) for biografia widget.
  TextEditingController? biografiaController;
  String? Function(BuildContext, String?)? biografiaControllerValidator;
  // State field(s) for ChoiceChips widget.
  String? choiceChipsValue2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    usuarioController?.dispose();
    nombreController?.dispose();
    apellidoController?.dispose();
    biografiaController?.dispose();
  }

  /// Additional helper methods are added here.

}

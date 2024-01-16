import '/flutter_flow/flutter_flow_util.dart';
import 'post_widget.dart' show PostWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostModel extends FlutterFlowModel<PostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeController;
  String? Function(BuildContext, String?)? nomeControllerValidator;
  String? _nomeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Idade widget.
  FocusNode? idadeFocusNode;
  TextEditingController? idadeController;
  String? Function(BuildContext, String?)? idadeControllerValidator;
  String? _idadeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  // State field(s) for Descricao widget.
  FocusNode? descricaoFocusNode;
  TextEditingController? descricaoController;
  String? Function(BuildContext, String?)? descricaoControllerValidator;
  String? _descricaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obrigatório';
    }

    return null;
  }

  DateTime? datePicked;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    nomeControllerValidator = _nomeControllerValidator;
    idadeControllerValidator = _idadeControllerValidator;
    descricaoControllerValidator = _descricaoControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nomeFocusNode?.dispose();
    nomeController?.dispose();

    idadeFocusNode?.dispose();
    idadeController?.dispose();

    descricaoFocusNode?.dispose();
    descricaoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}

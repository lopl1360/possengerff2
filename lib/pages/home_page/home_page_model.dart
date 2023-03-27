import '/backend/backend.dart';
import '/components/item_card_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // Models for ItemCard dynamic component.
  late FlutterFlowDynamicModels<ItemCardModel> itemCardModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    itemCardModels = FlutterFlowDynamicModels(() => ItemCardModel());
  }

  void dispose() {
    itemCardModels.dispose();
  }

  /// Additional helper methods are added here.

}

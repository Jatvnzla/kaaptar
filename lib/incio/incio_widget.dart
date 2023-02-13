import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/nuevo_producto_widget.dart';
import '../components/seleccion_estado_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'incio_model.dart';
export 'incio_model.dart';

class IncioWidget extends StatefulWidget {
  const IncioWidget({
    Key? key,
    this.detalleProducto,
  }) : super(key: key);

  final DocumentReference? detalleProducto;

  @override
  _IncioWidgetState createState() => _IncioWidgetState();
}

class _IncioWidgetState extends State<IncioWidget> {
  late IncioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IncioModel());

    _model.textController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return AuthUserStreamWidget(
      builder: (context) => FutureBuilder<List<EmpleosRecord>>(
        future: queryEmpleosRecordOnce(
          queryBuilder: (empleosRecord) => empleosRecord
              .where('EstadoEmpleo',
                  isEqualTo:
                      valueOrDefault(currentUserDocument?.estadoUsuario, ''))
              .orderBy('FechaDeCreacionEmpleo', descending: true),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: SpinKitDoubleBounce(
                  color: FlutterFlowTheme.of(context).primaryColor,
                  size: 40,
                ),
              ),
            );
          }
          List<EmpleosRecord> incioEmpleosRecordList = snapshot.data!;
          return Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                print('FloatingActionButton pressed ...');
              },
              backgroundColor: FlutterFlowTheme.of(context).primaryColor,
              elevation: 8,
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryBtnText,
                  size: 30,
                ),
                onPressed: () async {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Color(0x00FFFFFF),
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.9,
                          child: NuevoProductoWidget(),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
              ),
            ),
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      GoRouter.of(context).prepareAuthEvent();
                                      await signOut();

                                      context.goNamedAuth('Auth1', mounted);
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(50),
                                      child: CachedNetworkImage(
                                        imageUrl: valueOrDefault<String>(
                                          currentUserPhoto,
                                          'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png',
                                        ),
                                        width: 60,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () async {
                                            context.pushNamed('CraePerfil');
                                          },
                                          child: Text(
                                            currentUserDisplayName,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 18,
                                                ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () async {
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            0.35,
                                                    child:
                                                        SeleccionEstadoWidget(),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 5, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.mapMarkerAlt,
                                                  color: Colors.black,
                                                  size: 18,
                                                ),
                                              ),
                                              Text(
                                                valueOrDefault<String>(
                                                  valueOrDefault(
                                                      currentUserDocument
                                                          ?.estadoUsuario,
                                                      ''),
                                                  'Estado',
                                                ),
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20, 20, 20, 10),
                              child: Container(
                                width: 400,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: TextFormField(
                                          controller: _model.textController,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            Duration(milliseconds: 1),
                                            () async {
                                              setState(() {
                                                _model.simpleSearchResults =
                                                    TextSearch(
                                                  incioEmpleosRecordList
                                                      .map(
                                                        (record) =>
                                                            TextSearchItem(
                                                                record, [
                                                          record.puestoEmpleo!
                                                        ]),
                                                      )
                                                      .toList(),
                                                )
                                                        .search(_model
                                                            .textController
                                                            .text)
                                                        .map((r) => r.object)
                                                        .toList();
                                              });
                                              setState(() {
                                                FFAppState().Buscando = true;
                                              });
                                            },
                                          ),
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2,
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1,
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                      FlutterFlowIconButton(
                                        borderColor: Colors.transparent,
                                        borderRadius: 30,
                                        borderWidth: 1,
                                        buttonSize: 60,
                                        icon: Icon(
                                          Icons.search_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          size: 30,
                                        ),
                                        onPressed: () async {
                                          setState(() {
                                            _model.textController?.clear();
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height * 1,
                              decoration: BoxDecoration(),
                              child: DefaultTabController(
                                length: 2,
                                initialIndex: 0,
                                child: Column(
                                  children: [
                                    TabBar(
                                      labelColor: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      unselectedLabelColor:
                                          FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                          ),
                                      indicatorColor:
                                          FlutterFlowTheme.of(context)
                                              .primaryColor,
                                      indicatorWeight: 1,
                                      tabs: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 20, 0),
                                              child: Icon(
                                                Icons.people_alt,
                                              ),
                                            ),
                                            Tab(
                                              text: 'Para ti',
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(20, 0, 15, 0),
                                              child: Icon(
                                                Icons.my_location_rounded,
                                              ),
                                            ),
                                            Tab(
                                              text: 'Descubre ',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: TabBarView(
                                        children: [
                                          Stack(
                                            children: [
                                              if (!FFAppState().Buscando)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 10, 10, 0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final empleosParaTi =
                                                          incioEmpleosRecordList
                                                              .map((e) => e)
                                                              .toList();
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              empleosParaTi
                                                                  .length,
                                                              (empleosParaTiIndex) {
                                                            final empleosParaTiItem =
                                                                empleosParaTi[
                                                                    empleosParaTiIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 3,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'DetalleEmpleo',
                                                                            queryParams:
                                                                                {
                                                                              'detalleEmpleo': serializeParam(
                                                                                empleosParaTiItem,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'detalleEmpleo': empleosParaTiItem,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(15),
                                                                                bottomRight: Radius.circular(0),
                                                                                topLeft: Radius.circular(15),
                                                                                topRight: Radius.circular(0),
                                                                              ),
                                                                              child: Image.network(
                                                                                empleosParaTiItem.fotoEmpleo!,
                                                                                width: 80,
                                                                                height: 80,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    AutoSizeText(
                                                                                      valueOrDefault<String>(
                                                                                        empleosParaTiItem.puestoEmpleo,
                                                                                        'Puesto',
                                                                                      ),
                                                                                      maxLines: 3,
                                                                                      style: FlutterFlowTheme.of(context).title1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 16,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      'Empresa: ${empleosParaTiItem.nombreEmpresa}',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                      tablet: false,
                                                                                    ))
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1, 0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                                                                                          child: Text(
                                                                                            '\$100 Mensuales',
                                                                                            style: FlutterFlowTheme.of(context).bodyText1,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              if (FFAppState().Buscando)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 10, 10, 0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final empleosParaTiBusqueda =
                                                          _model
                                                              .simpleSearchResults
                                                              .toList();
                                                      return SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              empleosParaTiBusqueda
                                                                  .length,
                                                              (empleosParaTiBusquedaIndex) {
                                                            final empleosParaTiBusquedaItem =
                                                                empleosParaTiBusqueda[
                                                                    empleosParaTiBusquedaIndex];
                                                            return Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0,
                                                                          10,
                                                                          0,
                                                                          0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 3,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              15),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'DetalleEmpleo',
                                                                            queryParams:
                                                                                {
                                                                              'detalleEmpleo': serializeParam(
                                                                                empleosParaTiBusquedaItem,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'detalleEmpleo': empleosParaTiBusquedaItem,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(15),
                                                                                bottomRight: Radius.circular(0),
                                                                                topLeft: Radius.circular(15),
                                                                                topRight: Radius.circular(0),
                                                                              ),
                                                                              child: Image.network(
                                                                                empleosParaTiBusquedaItem.fotoEmpleo!,
                                                                                width: 100,
                                                                                height: 100,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    AutoSizeText(
                                                                                      valueOrDefault<String>(
                                                                                        empleosParaTiBusquedaItem.puestoEmpleo,
                                                                                        'Puesto',
                                                                                      ),
                                                                                      maxLines: 3,
                                                                                      style: FlutterFlowTheme.of(context).title1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 18,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      'Empresa: ${empleosParaTiBusquedaItem.nombreEmpresa}',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 12,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                    if (responsiveVisibility(
                                                                                      context: context,
                                                                                      phone: false,
                                                                                      tablet: false,
                                                                                    ))
                                                                                      Align(
                                                                                        alignment: AlignmentDirectional(1, 0),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 5),
                                                                                          child: Text(
                                                                                            '\$100 Mensuales',
                                                                                            style: FlutterFlowTheme.of(context).bodyText1,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          }),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              if (!FFAppState().Buscando)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 10, 10, 0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final descubreTodo =
                                                          incioEmpleosRecordList
                                                              .toList();
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            descubreTodo.length,
                                                            (descubreTodoIndex) {
                                                          final descubreTodoItem =
                                                              descubreTodo[
                                                                  descubreTodoIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 3,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                              ),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            12,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset: Offset(
                                                                            0,
                                                                            5),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'DetalleEmpleo',
                                                                            queryParams:
                                                                                {
                                                                              'detalleEmpleo': serializeParam(
                                                                                descubreTodoItem,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'detalleEmpleo': descubreTodoItem,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(15),
                                                                                bottomRight: Radius.circular(0),
                                                                                topLeft: Radius.circular(15),
                                                                                topRight: Radius.circular(0),
                                                                              ),
                                                                              child: Image.network(
                                                                                descubreTodoItem.fotoEmpleo!,
                                                                                width: 100,
                                                                                height: 100,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    AutoSizeText(
                                                                                      descubreTodoItem.puestoEmpleo!,
                                                                                      maxLines: 3,
                                                                                      style: FlutterFlowTheme.of(context).title1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 16,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      'Empresa:${descubreTodoItem.nombreEmpresa}',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 10,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              if (FFAppState().Buscando)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10, 10, 10, 0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final descubreTodo = _model
                                                          .simpleSearchResults
                                                          .toList();
                                                      return Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: List.generate(
                                                            descubreTodo.length,
                                                            (descubreTodoIndex) {
                                                          final descubreTodoItem =
                                                              descubreTodo[
                                                                  descubreTodoIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        10,
                                                                        0,
                                                                        0),
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 3,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                              ),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            15),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    boxShadow: [
                                                                      BoxShadow(
                                                                        blurRadius:
                                                                            12,
                                                                        color: Color(
                                                                            0x33000000),
                                                                        offset: Offset(
                                                                            0,
                                                                            5),
                                                                      )
                                                                    ],
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            15),
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      InkWell(
                                                                        onTap:
                                                                            () async {
                                                                          context
                                                                              .pushNamed(
                                                                            'DetalleEmpleo',
                                                                            queryParams:
                                                                                {
                                                                              'detalleEmpleo': serializeParam(
                                                                                descubreTodoItem,
                                                                                ParamType.Document,
                                                                              ),
                                                                            }.withoutNulls,
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              'detalleEmpleo': descubreTodoItem,
                                                                            },
                                                                          );
                                                                        },
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(15),
                                                                                bottomRight: Radius.circular(0),
                                                                                topLeft: Radius.circular(15),
                                                                                topRight: Radius.circular(0),
                                                                              ),
                                                                              child: Image.network(
                                                                                descubreTodoItem.fotoEmpleo!,
                                                                                width: 100,
                                                                                height: 100,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    AutoSizeText(
                                                                                      descubreTodoItem.puestoEmpleo!,
                                                                                      maxLines: 3,
                                                                                      style: FlutterFlowTheme.of(context).title1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 18,
                                                                                          ),
                                                                                    ),
                                                                                    Text(
                                                                                      'Empresa: ${descubreTodoItem.nombreEmpresa}',
                                                                                      style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 10,
                                                                                            fontWeight: FontWeight.w500,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

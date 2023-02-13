import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'empleos_record.g.dart';

abstract class EmpleosRecord
    implements Built<EmpleosRecord, EmpleosRecordBuilder> {
  static Serializer<EmpleosRecord> get serializer => _$empleosRecordSerializer;

  @BuiltValueField(wireName: 'ReferenciaEmpresa')
  DocumentReference? get referenciaEmpresa;

  @BuiltValueField(wireName: 'PuestoEmpleo')
  String? get puestoEmpleo;

  @BuiltValueField(wireName: 'DescripcionEmpleo')
  String? get descripcionEmpleo;

  @BuiltValueField(wireName: 'EstadoEmpleo')
  String? get estadoEmpleo;

  @BuiltValueField(wireName: 'MunicipioEmpleo')
  String? get municipioEmpleo;

  String? get detalleEmpleo;

  @BuiltValueField(wireName: 'EmpleoDiponible')
  bool? get empleoDiponible;

  @BuiltValueField(wireName: 'TipoDeEmpleo')
  String? get tipoDeEmpleo;

  @BuiltValueField(wireName: 'FormadeEmpleo')
  String? get formadeEmpleo;

  @BuiltValueField(wireName: 'DireccionEmpleo')
  String? get direccionEmpleo;

  @BuiltValueField(wireName: 'FotoEmpleo')
  String? get fotoEmpleo;

  @BuiltValueField(wireName: 'FechaDeCreacionEmpleo')
  String? get fechaDeCreacionEmpleo;

  @BuiltValueField(wireName: 'NombreEmpresa')
  String? get nombreEmpresa;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EmpleosRecordBuilder builder) => builder
    ..puestoEmpleo = ''
    ..descripcionEmpleo = ''
    ..estadoEmpleo = ''
    ..municipioEmpleo = ''
    ..detalleEmpleo = ''
    ..empleoDiponible = false
    ..tipoDeEmpleo = ''
    ..formadeEmpleo = ''
    ..direccionEmpleo = ''
    ..fotoEmpleo = ''
    ..fechaDeCreacionEmpleo = ''
    ..nombreEmpresa = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Empleos');

  static Stream<EmpleosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EmpleosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EmpleosRecord._();
  factory EmpleosRecord([void Function(EmpleosRecordBuilder) updates]) =
      _$EmpleosRecord;

  static EmpleosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEmpleosRecordData({
  DocumentReference? referenciaEmpresa,
  String? puestoEmpleo,
  String? descripcionEmpleo,
  String? estadoEmpleo,
  String? municipioEmpleo,
  String? detalleEmpleo,
  bool? empleoDiponible,
  String? tipoDeEmpleo,
  String? formadeEmpleo,
  String? direccionEmpleo,
  String? fotoEmpleo,
  String? fechaDeCreacionEmpleo,
  String? nombreEmpresa,
}) {
  final firestoreData = serializers.toFirestore(
    EmpleosRecord.serializer,
    EmpleosRecord(
      (e) => e
        ..referenciaEmpresa = referenciaEmpresa
        ..puestoEmpleo = puestoEmpleo
        ..descripcionEmpleo = descripcionEmpleo
        ..estadoEmpleo = estadoEmpleo
        ..municipioEmpleo = municipioEmpleo
        ..detalleEmpleo = detalleEmpleo
        ..empleoDiponible = empleoDiponible
        ..tipoDeEmpleo = tipoDeEmpleo
        ..formadeEmpleo = formadeEmpleo
        ..direccionEmpleo = direccionEmpleo
        ..fotoEmpleo = fotoEmpleo
        ..fechaDeCreacionEmpleo = fechaDeCreacionEmpleo
        ..nombreEmpresa = nombreEmpresa,
    ),
  );

  return firestoreData;
}

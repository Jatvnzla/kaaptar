import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'candidatos_record.g.dart';

abstract class CandidatosRecord
    implements Built<CandidatosRecord, CandidatosRecordBuilder> {
  static Serializer<CandidatosRecord> get serializer =>
      _$candidatosRecordSerializer;

  @BuiltValueField(wireName: 'RederenciaUser')
  DocumentReference? get rederenciaUser;

  @BuiltValueField(wireName: 'ReferenciaEmpleo')
  DocumentReference? get referenciaEmpleo;

  @BuiltValueField(wireName: 'Postulado')
  bool? get postulado;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CandidatosRecordBuilder builder) =>
      builder..postulado = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidatos');

  static Stream<CandidatosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CandidatosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CandidatosRecord._();
  factory CandidatosRecord([void Function(CandidatosRecordBuilder) updates]) =
      _$CandidatosRecord;

  static CandidatosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCandidatosRecordData({
  DocumentReference? rederenciaUser,
  DocumentReference? referenciaEmpleo,
  bool? postulado,
}) {
  final firestoreData = serializers.toFirestore(
    CandidatosRecord.serializer,
    CandidatosRecord(
      (c) => c
        ..rederenciaUser = rederenciaUser
        ..referenciaEmpleo = referenciaEmpleo
        ..postulado = postulado,
    ),
  );

  return firestoreData;
}

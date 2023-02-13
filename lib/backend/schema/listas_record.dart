import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'listas_record.g.dart';

abstract class ListasRecord
    implements Built<ListasRecord, ListasRecordBuilder> {
  static Serializer<ListasRecord> get serializer => _$listasRecordSerializer;

  @BuiltValueField(wireName: 'Habilidades')
  BuiltList<String>? get habilidades;

  @BuiltValueField(wireName: 'Estado')
  BuiltList<String>? get estado;

  @BuiltValueField(wireName: 'Municipio')
  BuiltList<String>? get municipio;

  @BuiltValueField(wireName: 'Amazonas')
  String? get amazonas;

  @BuiltValueField(wireName: 'Estados')
  BuiltList<String>? get estados;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ListasRecordBuilder builder) => builder
    ..habilidades = ListBuilder()
    ..estado = ListBuilder()
    ..municipio = ListBuilder()
    ..amazonas = ''
    ..estados = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Listas');

  static Stream<ListasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ListasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ListasRecord._();
  factory ListasRecord([void Function(ListasRecordBuilder) updates]) =
      _$ListasRecord;

  static ListasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createListasRecordData({
  String? amazonas,
}) {
  final firestoreData = serializers.toFirestore(
    ListasRecord.serializer,
    ListasRecord(
      (l) => l
        ..habilidades = null
        ..estado = null
        ..municipio = null
        ..amazonas = amazonas
        ..estados = null,
    ),
  );

  return firestoreData;
}

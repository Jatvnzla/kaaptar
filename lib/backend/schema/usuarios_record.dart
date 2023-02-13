import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuarios_record.g.dart';

abstract class UsuariosRecord
    implements Built<UsuariosRecord, UsuariosRecordBuilder> {
  static Serializer<UsuariosRecord> get serializer =>
      _$usuariosRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: 'usuario_Unico')
  String? get usuarioUnico;

  @BuiltValueField(wireName: 'Nombre_usuario')
  String? get nombreUsuario;

  @BuiltValueField(wireName: 'apellido_Usuario')
  String? get apellidoUsuario;

  @BuiltValueField(wireName: 'Bio_Usuario')
  String? get bioUsuario;

  @BuiltValueField(wireName: 'estado_Usuario')
  String? get estadoUsuario;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsuariosRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..usuarioUnico = ''
    ..nombreUsuario = ''
    ..apellidoUsuario = ''
    ..bioUsuario = ''
    ..estadoUsuario = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsuariosRecord._();
  factory UsuariosRecord([void Function(UsuariosRecordBuilder) updates]) =
      _$UsuariosRecord;

  static UsuariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsuariosRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? usuarioUnico,
  String? nombreUsuario,
  String? apellidoUsuario,
  String? bioUsuario,
  String? estadoUsuario,
}) {
  final firestoreData = serializers.toFirestore(
    UsuariosRecord.serializer,
    UsuariosRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..usuarioUnico = usuarioUnico
        ..nombreUsuario = nombreUsuario
        ..apellidoUsuario = apellidoUsuario
        ..bioUsuario = bioUsuario
        ..estadoUsuario = estadoUsuario,
    ),
  );

  return firestoreData;
}

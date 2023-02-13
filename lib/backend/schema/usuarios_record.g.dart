// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuariosRecord> _$usuariosRecordSerializer =
    new _$UsuariosRecordSerializer();

class _$UsuariosRecordSerializer
    implements StructuredSerializer<UsuariosRecord> {
  @override
  final Iterable<Type> types = const [UsuariosRecord, _$UsuariosRecord];
  @override
  final String wireName = 'UsuariosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsuariosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.usuarioUnico;
    if (value != null) {
      result
        ..add('usuario_Unico')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreUsuario;
    if (value != null) {
      result
        ..add('Nombre_usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellidoUsuario;
    if (value != null) {
      result
        ..add('apellido_Usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bioUsuario;
    if (value != null) {
      result
        ..add('Bio_Usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estadoUsuario;
    if (value != null) {
      result
        ..add('estado_Usuario')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsuariosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuariosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'usuario_Unico':
          result.usuarioUnico = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Nombre_usuario':
          result.nombreUsuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'apellido_Usuario':
          result.apellidoUsuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Bio_Usuario':
          result.bioUsuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'estado_Usuario':
          result.estadoUsuario = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsuariosRecord extends UsuariosRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? usuarioUnico;
  @override
  final String? nombreUsuario;
  @override
  final String? apellidoUsuario;
  @override
  final String? bioUsuario;
  @override
  final String? estadoUsuario;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsuariosRecord([void Function(UsuariosRecordBuilder)? updates]) =>
      (new UsuariosRecordBuilder()..update(updates))._build();

  _$UsuariosRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.usuarioUnico,
      this.nombreUsuario,
      this.apellidoUsuario,
      this.bioUsuario,
      this.estadoUsuario,
      this.ffRef})
      : super._();

  @override
  UsuariosRecord rebuild(void Function(UsuariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuariosRecordBuilder toBuilder() =>
      new UsuariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuariosRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        usuarioUnico == other.usuarioUnico &&
        nombreUsuario == other.nombreUsuario &&
        apellidoUsuario == other.apellidoUsuario &&
        bioUsuario == other.bioUsuario &&
        estadoUsuario == other.estadoUsuario &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, email.hashCode),
                                                displayName.hashCode),
                                            photoUrl.hashCode),
                                        uid.hashCode),
                                    createdTime.hashCode),
                                phoneNumber.hashCode),
                            usuarioUnico.hashCode),
                        nombreUsuario.hashCode),
                    apellidoUsuario.hashCode),
                bioUsuario.hashCode),
            estadoUsuario.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsuariosRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('usuarioUnico', usuarioUnico)
          ..add('nombreUsuario', nombreUsuario)
          ..add('apellidoUsuario', apellidoUsuario)
          ..add('bioUsuario', bioUsuario)
          ..add('estadoUsuario', estadoUsuario)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsuariosRecordBuilder
    implements Builder<UsuariosRecord, UsuariosRecordBuilder> {
  _$UsuariosRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _usuarioUnico;
  String? get usuarioUnico => _$this._usuarioUnico;
  set usuarioUnico(String? usuarioUnico) => _$this._usuarioUnico = usuarioUnico;

  String? _nombreUsuario;
  String? get nombreUsuario => _$this._nombreUsuario;
  set nombreUsuario(String? nombreUsuario) =>
      _$this._nombreUsuario = nombreUsuario;

  String? _apellidoUsuario;
  String? get apellidoUsuario => _$this._apellidoUsuario;
  set apellidoUsuario(String? apellidoUsuario) =>
      _$this._apellidoUsuario = apellidoUsuario;

  String? _bioUsuario;
  String? get bioUsuario => _$this._bioUsuario;
  set bioUsuario(String? bioUsuario) => _$this._bioUsuario = bioUsuario;

  String? _estadoUsuario;
  String? get estadoUsuario => _$this._estadoUsuario;
  set estadoUsuario(String? estadoUsuario) =>
      _$this._estadoUsuario = estadoUsuario;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsuariosRecordBuilder() {
    UsuariosRecord._initializeBuilder(this);
  }

  UsuariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _usuarioUnico = $v.usuarioUnico;
      _nombreUsuario = $v.nombreUsuario;
      _apellidoUsuario = $v.apellidoUsuario;
      _bioUsuario = $v.bioUsuario;
      _estadoUsuario = $v.estadoUsuario;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuariosRecord;
  }

  @override
  void update(void Function(UsuariosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsuariosRecord build() => _build();

  _$UsuariosRecord _build() {
    final _$result = _$v ??
        new _$UsuariosRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            usuarioUnico: usuarioUnico,
            nombreUsuario: nombreUsuario,
            apellidoUsuario: apellidoUsuario,
            bioUsuario: bioUsuario,
            estadoUsuario: estadoUsuario,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

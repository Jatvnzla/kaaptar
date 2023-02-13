// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'candidatos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CandidatosRecord> _$candidatosRecordSerializer =
    new _$CandidatosRecordSerializer();

class _$CandidatosRecordSerializer
    implements StructuredSerializer<CandidatosRecord> {
  @override
  final Iterable<Type> types = const [CandidatosRecord, _$CandidatosRecord];
  @override
  final String wireName = 'CandidatosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CandidatosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rederenciaUser;
    if (value != null) {
      result
        ..add('RederenciaUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.referenciaEmpleo;
    if (value != null) {
      result
        ..add('ReferenciaEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.postulado;
    if (value != null) {
      result
        ..add('Postulado')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  CandidatosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CandidatosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'RederenciaUser':
          result.rederenciaUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ReferenciaEmpleo':
          result.referenciaEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Postulado':
          result.postulado = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$CandidatosRecord extends CandidatosRecord {
  @override
  final DocumentReference<Object?>? rederenciaUser;
  @override
  final DocumentReference<Object?>? referenciaEmpleo;
  @override
  final bool? postulado;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CandidatosRecord(
          [void Function(CandidatosRecordBuilder)? updates]) =>
      (new CandidatosRecordBuilder()..update(updates))._build();

  _$CandidatosRecord._(
      {this.rederenciaUser, this.referenciaEmpleo, this.postulado, this.ffRef})
      : super._();

  @override
  CandidatosRecord rebuild(void Function(CandidatosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CandidatosRecordBuilder toBuilder() =>
      new CandidatosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CandidatosRecord &&
        rederenciaUser == other.rederenciaUser &&
        referenciaEmpleo == other.referenciaEmpleo &&
        postulado == other.postulado &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, rederenciaUser.hashCode), referenciaEmpleo.hashCode),
            postulado.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CandidatosRecord')
          ..add('rederenciaUser', rederenciaUser)
          ..add('referenciaEmpleo', referenciaEmpleo)
          ..add('postulado', postulado)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CandidatosRecordBuilder
    implements Builder<CandidatosRecord, CandidatosRecordBuilder> {
  _$CandidatosRecord? _$v;

  DocumentReference<Object?>? _rederenciaUser;
  DocumentReference<Object?>? get rederenciaUser => _$this._rederenciaUser;
  set rederenciaUser(DocumentReference<Object?>? rederenciaUser) =>
      _$this._rederenciaUser = rederenciaUser;

  DocumentReference<Object?>? _referenciaEmpleo;
  DocumentReference<Object?>? get referenciaEmpleo => _$this._referenciaEmpleo;
  set referenciaEmpleo(DocumentReference<Object?>? referenciaEmpleo) =>
      _$this._referenciaEmpleo = referenciaEmpleo;

  bool? _postulado;
  bool? get postulado => _$this._postulado;
  set postulado(bool? postulado) => _$this._postulado = postulado;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CandidatosRecordBuilder() {
    CandidatosRecord._initializeBuilder(this);
  }

  CandidatosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rederenciaUser = $v.rederenciaUser;
      _referenciaEmpleo = $v.referenciaEmpleo;
      _postulado = $v.postulado;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CandidatosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CandidatosRecord;
  }

  @override
  void update(void Function(CandidatosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CandidatosRecord build() => _build();

  _$CandidatosRecord _build() {
    final _$result = _$v ??
        new _$CandidatosRecord._(
            rederenciaUser: rederenciaUser,
            referenciaEmpleo: referenciaEmpleo,
            postulado: postulado,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

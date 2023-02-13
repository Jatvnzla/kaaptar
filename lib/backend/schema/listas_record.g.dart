// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ListasRecord> _$listasRecordSerializer =
    new _$ListasRecordSerializer();

class _$ListasRecordSerializer implements StructuredSerializer<ListasRecord> {
  @override
  final Iterable<Type> types = const [ListasRecord, _$ListasRecord];
  @override
  final String wireName = 'ListasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ListasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.habilidades;
    if (value != null) {
      result
        ..add('Habilidades')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.estado;
    if (value != null) {
      result
        ..add('Estado')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.municipio;
    if (value != null) {
      result
        ..add('Municipio')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.amazonas;
    if (value != null) {
      result
        ..add('Amazonas')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estados;
    if (value != null) {
      result
        ..add('Estados')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  ListasRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ListasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Habilidades':
          result.habilidades.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Estado':
          result.estado.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Municipio':
          result.municipio.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Amazonas':
          result.amazonas = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Estados':
          result.estados.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$ListasRecord extends ListasRecord {
  @override
  final BuiltList<String>? habilidades;
  @override
  final BuiltList<String>? estado;
  @override
  final BuiltList<String>? municipio;
  @override
  final String? amazonas;
  @override
  final BuiltList<String>? estados;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ListasRecord([void Function(ListasRecordBuilder)? updates]) =>
      (new ListasRecordBuilder()..update(updates))._build();

  _$ListasRecord._(
      {this.habilidades,
      this.estado,
      this.municipio,
      this.amazonas,
      this.estados,
      this.ffRef})
      : super._();

  @override
  ListasRecord rebuild(void Function(ListasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListasRecordBuilder toBuilder() => new ListasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListasRecord &&
        habilidades == other.habilidades &&
        estado == other.estado &&
        municipio == other.municipio &&
        amazonas == other.amazonas &&
        estados == other.estados &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, habilidades.hashCode), estado.hashCode),
                    municipio.hashCode),
                amazonas.hashCode),
            estados.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListasRecord')
          ..add('habilidades', habilidades)
          ..add('estado', estado)
          ..add('municipio', municipio)
          ..add('amazonas', amazonas)
          ..add('estados', estados)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ListasRecordBuilder
    implements Builder<ListasRecord, ListasRecordBuilder> {
  _$ListasRecord? _$v;

  ListBuilder<String>? _habilidades;
  ListBuilder<String> get habilidades =>
      _$this._habilidades ??= new ListBuilder<String>();
  set habilidades(ListBuilder<String>? habilidades) =>
      _$this._habilidades = habilidades;

  ListBuilder<String>? _estado;
  ListBuilder<String> get estado =>
      _$this._estado ??= new ListBuilder<String>();
  set estado(ListBuilder<String>? estado) => _$this._estado = estado;

  ListBuilder<String>? _municipio;
  ListBuilder<String> get municipio =>
      _$this._municipio ??= new ListBuilder<String>();
  set municipio(ListBuilder<String>? municipio) =>
      _$this._municipio = municipio;

  String? _amazonas;
  String? get amazonas => _$this._amazonas;
  set amazonas(String? amazonas) => _$this._amazonas = amazonas;

  ListBuilder<String>? _estados;
  ListBuilder<String> get estados =>
      _$this._estados ??= new ListBuilder<String>();
  set estados(ListBuilder<String>? estados) => _$this._estados = estados;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ListasRecordBuilder() {
    ListasRecord._initializeBuilder(this);
  }

  ListasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _habilidades = $v.habilidades?.toBuilder();
      _estado = $v.estado?.toBuilder();
      _municipio = $v.municipio?.toBuilder();
      _amazonas = $v.amazonas;
      _estados = $v.estados?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListasRecord;
  }

  @override
  void update(void Function(ListasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListasRecord build() => _build();

  _$ListasRecord _build() {
    _$ListasRecord _$result;
    try {
      _$result = _$v ??
          new _$ListasRecord._(
              habilidades: _habilidades?.build(),
              estado: _estado?.build(),
              municipio: _municipio?.build(),
              amazonas: amazonas,
              estados: _estados?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'habilidades';
        _habilidades?.build();
        _$failedField = 'estado';
        _estado?.build();
        _$failedField = 'municipio';
        _municipio?.build();

        _$failedField = 'estados';
        _estados?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ListasRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

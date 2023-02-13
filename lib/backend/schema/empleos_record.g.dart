// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empleos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EmpleosRecord> _$empleosRecordSerializer =
    new _$EmpleosRecordSerializer();

class _$EmpleosRecordSerializer implements StructuredSerializer<EmpleosRecord> {
  @override
  final Iterable<Type> types = const [EmpleosRecord, _$EmpleosRecord];
  @override
  final String wireName = 'EmpleosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EmpleosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.referenciaEmpresa;
    if (value != null) {
      result
        ..add('ReferenciaEmpresa')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.puestoEmpleo;
    if (value != null) {
      result
        ..add('PuestoEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.descripcionEmpleo;
    if (value != null) {
      result
        ..add('DescripcionEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.estadoEmpleo;
    if (value != null) {
      result
        ..add('EstadoEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.municipioEmpleo;
    if (value != null) {
      result
        ..add('MunicipioEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.detalleEmpleo;
    if (value != null) {
      result
        ..add('detalleEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.empleoDiponible;
    if (value != null) {
      result
        ..add('EmpleoDiponible')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.tipoDeEmpleo;
    if (value != null) {
      result
        ..add('TipoDeEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.formadeEmpleo;
    if (value != null) {
      result
        ..add('FormadeEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.direccionEmpleo;
    if (value != null) {
      result
        ..add('DireccionEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fotoEmpleo;
    if (value != null) {
      result
        ..add('FotoEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.fechaDeCreacionEmpleo;
    if (value != null) {
      result
        ..add('FechaDeCreacionEmpleo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nombreEmpresa;
    if (value != null) {
      result
        ..add('NombreEmpresa')
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
  EmpleosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EmpleosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ReferenciaEmpresa':
          result.referenciaEmpresa = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'PuestoEmpleo':
          result.puestoEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DescripcionEmpleo':
          result.descripcionEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'EstadoEmpleo':
          result.estadoEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'MunicipioEmpleo':
          result.municipioEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'detalleEmpleo':
          result.detalleEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'EmpleoDiponible':
          result.empleoDiponible = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'TipoDeEmpleo':
          result.tipoDeEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FormadeEmpleo':
          result.formadeEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DireccionEmpleo':
          result.direccionEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FotoEmpleo':
          result.fotoEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'FechaDeCreacionEmpleo':
          result.fechaDeCreacionEmpleo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'NombreEmpresa':
          result.nombreEmpresa = serializers.deserialize(value,
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

class _$EmpleosRecord extends EmpleosRecord {
  @override
  final DocumentReference<Object?>? referenciaEmpresa;
  @override
  final String? puestoEmpleo;
  @override
  final String? descripcionEmpleo;
  @override
  final String? estadoEmpleo;
  @override
  final String? municipioEmpleo;
  @override
  final String? detalleEmpleo;
  @override
  final bool? empleoDiponible;
  @override
  final String? tipoDeEmpleo;
  @override
  final String? formadeEmpleo;
  @override
  final String? direccionEmpleo;
  @override
  final String? fotoEmpleo;
  @override
  final String? fechaDeCreacionEmpleo;
  @override
  final String? nombreEmpresa;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EmpleosRecord([void Function(EmpleosRecordBuilder)? updates]) =>
      (new EmpleosRecordBuilder()..update(updates))._build();

  _$EmpleosRecord._(
      {this.referenciaEmpresa,
      this.puestoEmpleo,
      this.descripcionEmpleo,
      this.estadoEmpleo,
      this.municipioEmpleo,
      this.detalleEmpleo,
      this.empleoDiponible,
      this.tipoDeEmpleo,
      this.formadeEmpleo,
      this.direccionEmpleo,
      this.fotoEmpleo,
      this.fechaDeCreacionEmpleo,
      this.nombreEmpresa,
      this.ffRef})
      : super._();

  @override
  EmpleosRecord rebuild(void Function(EmpleosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmpleosRecordBuilder toBuilder() => new EmpleosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmpleosRecord &&
        referenciaEmpresa == other.referenciaEmpresa &&
        puestoEmpleo == other.puestoEmpleo &&
        descripcionEmpleo == other.descripcionEmpleo &&
        estadoEmpleo == other.estadoEmpleo &&
        municipioEmpleo == other.municipioEmpleo &&
        detalleEmpleo == other.detalleEmpleo &&
        empleoDiponible == other.empleoDiponible &&
        tipoDeEmpleo == other.tipoDeEmpleo &&
        formadeEmpleo == other.formadeEmpleo &&
        direccionEmpleo == other.direccionEmpleo &&
        fotoEmpleo == other.fotoEmpleo &&
        fechaDeCreacionEmpleo == other.fechaDeCreacionEmpleo &&
        nombreEmpresa == other.nombreEmpresa &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            0,
                                                            referenciaEmpresa
                                                                .hashCode),
                                                        puestoEmpleo.hashCode),
                                                    descripcionEmpleo.hashCode),
                                                estadoEmpleo.hashCode),
                                            municipioEmpleo.hashCode),
                                        detalleEmpleo.hashCode),
                                    empleoDiponible.hashCode),
                                tipoDeEmpleo.hashCode),
                            formadeEmpleo.hashCode),
                        direccionEmpleo.hashCode),
                    fotoEmpleo.hashCode),
                fechaDeCreacionEmpleo.hashCode),
            nombreEmpresa.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EmpleosRecord')
          ..add('referenciaEmpresa', referenciaEmpresa)
          ..add('puestoEmpleo', puestoEmpleo)
          ..add('descripcionEmpleo', descripcionEmpleo)
          ..add('estadoEmpleo', estadoEmpleo)
          ..add('municipioEmpleo', municipioEmpleo)
          ..add('detalleEmpleo', detalleEmpleo)
          ..add('empleoDiponible', empleoDiponible)
          ..add('tipoDeEmpleo', tipoDeEmpleo)
          ..add('formadeEmpleo', formadeEmpleo)
          ..add('direccionEmpleo', direccionEmpleo)
          ..add('fotoEmpleo', fotoEmpleo)
          ..add('fechaDeCreacionEmpleo', fechaDeCreacionEmpleo)
          ..add('nombreEmpresa', nombreEmpresa)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EmpleosRecordBuilder
    implements Builder<EmpleosRecord, EmpleosRecordBuilder> {
  _$EmpleosRecord? _$v;

  DocumentReference<Object?>? _referenciaEmpresa;
  DocumentReference<Object?>? get referenciaEmpresa =>
      _$this._referenciaEmpresa;
  set referenciaEmpresa(DocumentReference<Object?>? referenciaEmpresa) =>
      _$this._referenciaEmpresa = referenciaEmpresa;

  String? _puestoEmpleo;
  String? get puestoEmpleo => _$this._puestoEmpleo;
  set puestoEmpleo(String? puestoEmpleo) => _$this._puestoEmpleo = puestoEmpleo;

  String? _descripcionEmpleo;
  String? get descripcionEmpleo => _$this._descripcionEmpleo;
  set descripcionEmpleo(String? descripcionEmpleo) =>
      _$this._descripcionEmpleo = descripcionEmpleo;

  String? _estadoEmpleo;
  String? get estadoEmpleo => _$this._estadoEmpleo;
  set estadoEmpleo(String? estadoEmpleo) => _$this._estadoEmpleo = estadoEmpleo;

  String? _municipioEmpleo;
  String? get municipioEmpleo => _$this._municipioEmpleo;
  set municipioEmpleo(String? municipioEmpleo) =>
      _$this._municipioEmpleo = municipioEmpleo;

  String? _detalleEmpleo;
  String? get detalleEmpleo => _$this._detalleEmpleo;
  set detalleEmpleo(String? detalleEmpleo) =>
      _$this._detalleEmpleo = detalleEmpleo;

  bool? _empleoDiponible;
  bool? get empleoDiponible => _$this._empleoDiponible;
  set empleoDiponible(bool? empleoDiponible) =>
      _$this._empleoDiponible = empleoDiponible;

  String? _tipoDeEmpleo;
  String? get tipoDeEmpleo => _$this._tipoDeEmpleo;
  set tipoDeEmpleo(String? tipoDeEmpleo) => _$this._tipoDeEmpleo = tipoDeEmpleo;

  String? _formadeEmpleo;
  String? get formadeEmpleo => _$this._formadeEmpleo;
  set formadeEmpleo(String? formadeEmpleo) =>
      _$this._formadeEmpleo = formadeEmpleo;

  String? _direccionEmpleo;
  String? get direccionEmpleo => _$this._direccionEmpleo;
  set direccionEmpleo(String? direccionEmpleo) =>
      _$this._direccionEmpleo = direccionEmpleo;

  String? _fotoEmpleo;
  String? get fotoEmpleo => _$this._fotoEmpleo;
  set fotoEmpleo(String? fotoEmpleo) => _$this._fotoEmpleo = fotoEmpleo;

  String? _fechaDeCreacionEmpleo;
  String? get fechaDeCreacionEmpleo => _$this._fechaDeCreacionEmpleo;
  set fechaDeCreacionEmpleo(String? fechaDeCreacionEmpleo) =>
      _$this._fechaDeCreacionEmpleo = fechaDeCreacionEmpleo;

  String? _nombreEmpresa;
  String? get nombreEmpresa => _$this._nombreEmpresa;
  set nombreEmpresa(String? nombreEmpresa) =>
      _$this._nombreEmpresa = nombreEmpresa;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EmpleosRecordBuilder() {
    EmpleosRecord._initializeBuilder(this);
  }

  EmpleosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _referenciaEmpresa = $v.referenciaEmpresa;
      _puestoEmpleo = $v.puestoEmpleo;
      _descripcionEmpleo = $v.descripcionEmpleo;
      _estadoEmpleo = $v.estadoEmpleo;
      _municipioEmpleo = $v.municipioEmpleo;
      _detalleEmpleo = $v.detalleEmpleo;
      _empleoDiponible = $v.empleoDiponible;
      _tipoDeEmpleo = $v.tipoDeEmpleo;
      _formadeEmpleo = $v.formadeEmpleo;
      _direccionEmpleo = $v.direccionEmpleo;
      _fotoEmpleo = $v.fotoEmpleo;
      _fechaDeCreacionEmpleo = $v.fechaDeCreacionEmpleo;
      _nombreEmpresa = $v.nombreEmpresa;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmpleosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmpleosRecord;
  }

  @override
  void update(void Function(EmpleosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EmpleosRecord build() => _build();

  _$EmpleosRecord _build() {
    final _$result = _$v ??
        new _$EmpleosRecord._(
            referenciaEmpresa: referenciaEmpresa,
            puestoEmpleo: puestoEmpleo,
            descripcionEmpleo: descripcionEmpleo,
            estadoEmpleo: estadoEmpleo,
            municipioEmpleo: municipioEmpleo,
            detalleEmpleo: detalleEmpleo,
            empleoDiponible: empleoDiponible,
            tipoDeEmpleo: tipoDeEmpleo,
            formadeEmpleo: formadeEmpleo,
            direccionEmpleo: direccionEmpleo,
            fotoEmpleo: fotoEmpleo,
            fechaDeCreacionEmpleo: fechaDeCreacionEmpleo,
            nombreEmpresa: nombreEmpresa,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

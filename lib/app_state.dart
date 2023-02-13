import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _EstadosVenezuela =
        prefs.getStringList('ff_EstadosVenezuela') ?? _EstadosVenezuela;
    _megusta = prefs.getBool('ff_megusta') ?? _megusta;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _EstadosVenezuela = [
    'Amazonas',
    'Anzoátegui',
    'Apure',
    'Aragua',
    'Barinas',
    'Bolívar',
    'Carabobo',
    'Cojedes',
    'Delta Amacuro',
    'Dependencias Federales',
    'Distrito Federal',
    'Falcón',
    'Guárico',
    'Lara',
    'Mérida',
    'Miranda',
    'Monagas',
    'Nueva Esparta',
    'Portuguesa',
    'Sucre',
    'Táchira',
    'Trujillo',
    'Vargas',
    'Yaracuy ',
    'Zulia'
  ];
  List<String> get EstadosVenezuela => _EstadosVenezuela;
  set EstadosVenezuela(List<String> _value) {
    _EstadosVenezuela = _value;
    prefs.setStringList('ff_EstadosVenezuela', _value);
  }

  void addToEstadosVenezuela(String _value) {
    _EstadosVenezuela.add(_value);
    prefs.setStringList('ff_EstadosVenezuela', _EstadosVenezuela);
  }

  void removeFromEstadosVenezuela(String _value) {
    _EstadosVenezuela.remove(_value);
    prefs.setStringList('ff_EstadosVenezuela', _EstadosVenezuela);
  }

  void removeAtIndexFromEstadosVenezuela(int _index) {
    _EstadosVenezuela.removeAt(_index);
    prefs.setStringList('ff_EstadosVenezuela', _EstadosVenezuela);
  }

  bool _Buscando = false;
  bool get Buscando => _Buscando;
  set Buscando(bool _value) {
    _Buscando = _value;
  }

  String _EstadoUsuarioLocal = '';
  String get EstadoUsuarioLocal => _EstadoUsuarioLocal;
  set EstadoUsuarioLocal(String _value) {
    _EstadoUsuarioLocal = _value;
  }

  bool _megusta = false;
  bool get megusta => _megusta;
  set megusta(bool _value) {
    _megusta = _value;
    prefs.setBool('ff_megusta', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

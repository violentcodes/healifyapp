import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _note = prefs.getStringList('ff_note') ?? _note;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _note = [];
  List<String> get note => _note;
  set note(List<String> value) {
    _note = value;
    prefs.setStringList('ff_note', value);
  }

  void addToNote(String value) {
    note.add(value);
    prefs.setStringList('ff_note', _note);
  }

  void removeFromNote(String value) {
    note.remove(value);
    prefs.setStringList('ff_note', _note);
  }

  void removeAtIndexFromNote(int index) {
    note.removeAt(index);
    prefs.setStringList('ff_note', _note);
  }

  void updateNoteAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    note[index] = updateFn(_note[index]);
    prefs.setStringList('ff_note', _note);
  }

  void insertAtIndexInNote(int index, String value) {
    note.insert(index, value);
    prefs.setStringList('ff_note', _note);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

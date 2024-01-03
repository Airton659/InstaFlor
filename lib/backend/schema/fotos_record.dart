import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FotosRecord extends FirestoreRecord {
  FotosRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "Data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "Idade" field.
  int? _idade;
  int get idade => _idade ?? 0;
  bool hasIdade() => _idade != null;

  // "Obs" field.
  String? _obs;
  String get obs => _obs ?? '';
  bool hasObs() => _obs != null;

  // "NomeFoto" field.
  String? _nomeFoto;
  String get nomeFoto => _nomeFoto ?? '';
  bool hasNomeFoto() => _nomeFoto != null;

  // "Teste" field.
  String? _teste;
  String get teste => _teste ?? '';
  bool hasTeste() => _teste != null;

  void _initializeFields() {
    _foto = snapshotData['Foto'] as String?;
    _data = snapshotData['Data'] as DateTime?;
    _idade = castToType<int>(snapshotData['Idade']);
    _obs = snapshotData['Obs'] as String?;
    _nomeFoto = snapshotData['NomeFoto'] as String?;
    _teste = snapshotData['Teste'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('fotos');

  static Stream<FotosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FotosRecord.fromSnapshot(s));

  static Future<FotosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FotosRecord.fromSnapshot(s));

  static FotosRecord fromSnapshot(DocumentSnapshot snapshot) => FotosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FotosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FotosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FotosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FotosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFotosRecordData({
  String? foto,
  DateTime? data,
  int? idade,
  String? obs,
  String? nomeFoto,
  String? teste,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Foto': foto,
      'Data': data,
      'Idade': idade,
      'Obs': obs,
      'NomeFoto': nomeFoto,
      'Teste': teste,
    }.withoutNulls,
  );

  return firestoreData;
}

class FotosRecordDocumentEquality implements Equality<FotosRecord> {
  const FotosRecordDocumentEquality();

  @override
  bool equals(FotosRecord? e1, FotosRecord? e2) {
    return e1?.foto == e2?.foto &&
        e1?.data == e2?.data &&
        e1?.idade == e2?.idade &&
        e1?.obs == e2?.obs &&
        e1?.nomeFoto == e2?.nomeFoto &&
        e1?.teste == e2?.teste;
  }

  @override
  int hash(FotosRecord? e) => const ListEquality()
      .hash([e?.foto, e?.data, e?.idade, e?.obs, e?.nomeFoto, e?.teste]);

  @override
  bool isValidKey(Object? o) => o is FotosRecord;
}

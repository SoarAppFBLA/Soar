import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AthleticsRecord extends FirestoreRecord {
  AthleticsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "fromDate" field.
  String? _fromDate;
  String get fromDate => _fromDate ?? '';
  bool hasFromDate() => _fromDate != null;

  // "toDate" field.
  String? _toDate;
  String get toDate => _toDate ?? '';
  bool hasToDate() => _toDate != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
    _fromDate = snapshotData['fromDate'] as String?;
    _toDate = snapshotData['toDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('athletics');

  static Stream<AthleticsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AthleticsRecord.fromSnapshot(s));

  static Future<AthleticsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AthleticsRecord.fromSnapshot(s));

  static AthleticsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AthleticsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AthleticsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AthleticsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AthleticsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AthleticsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAthleticsRecordData({
  String? uid,
  String? title,
  String? details,
  String? fromDate,
  String? toDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'title': title,
      'details': details,
      'fromDate': fromDate,
      'toDate': toDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class AthleticsRecordDocumentEquality implements Equality<AthleticsRecord> {
  const AthleticsRecordDocumentEquality();

  @override
  bool equals(AthleticsRecord? e1, AthleticsRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.title == e2?.title &&
        e1?.details == e2?.details &&
        e1?.fromDate == e2?.fromDate &&
        e1?.toDate == e2?.toDate;
  }

  @override
  int hash(AthleticsRecord? e) => const ListEquality()
      .hash([e?.uid, e?.title, e?.details, e?.fromDate, e?.toDate]);

  @override
  bool isValidKey(Object? o) => o is AthleticsRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CommunityRecord extends FirestoreRecord {
  CommunityRecord._(
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

  // "hours" field.
  String? _hours;
  String get hours => _hours ?? '';
  bool hasHours() => _hours != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
    _fromDate = snapshotData['fromDate'] as String?;
    _toDate = snapshotData['toDate'] as String?;
    _hours = snapshotData['hours'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('community');

  static Stream<CommunityRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CommunityRecord.fromSnapshot(s));

  static Future<CommunityRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CommunityRecord.fromSnapshot(s));

  static CommunityRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CommunityRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CommunityRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CommunityRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CommunityRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CommunityRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCommunityRecordData({
  String? uid,
  String? title,
  String? details,
  String? fromDate,
  String? toDate,
  String? hours,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'title': title,
      'details': details,
      'fromDate': fromDate,
      'toDate': toDate,
      'hours': hours,
    }.withoutNulls,
  );

  return firestoreData;
}

class CommunityRecordDocumentEquality implements Equality<CommunityRecord> {
  const CommunityRecordDocumentEquality();

  @override
  bool equals(CommunityRecord? e1, CommunityRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.title == e2?.title &&
        e1?.details == e2?.details &&
        e1?.fromDate == e2?.fromDate &&
        e1?.toDate == e2?.toDate &&
        e1?.hours == e2?.hours;
  }

  @override
  int hash(CommunityRecord? e) => const ListEquality()
      .hash([e?.uid, e?.title, e?.details, e?.fromDate, e?.toDate, e?.hours]);

  @override
  bool isValidKey(Object? o) => o is CommunityRecord;
}

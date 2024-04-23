import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ClubsRecord extends FirestoreRecord {
  ClubsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "role" field.
  String? _role;
  String get role => _role ?? '';
  bool hasRole() => _role != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "fromDate" field.
  String? _fromDate;
  String get fromDate => _fromDate ?? '';
  bool hasFromDate() => _fromDate != null;

  // "toDate" field.
  String? _toDate;
  String get toDate => _toDate ?? '';
  bool hasToDate() => _toDate != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
    _role = snapshotData['role'] as String?;
    _uid = snapshotData['uid'] as String?;
    _fromDate = snapshotData['fromDate'] as String?;
    _toDate = snapshotData['toDate'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('clubs');

  static Stream<ClubsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClubsRecord.fromSnapshot(s));

  static Future<ClubsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClubsRecord.fromSnapshot(s));

  static ClubsRecord fromSnapshot(DocumentSnapshot snapshot) => ClubsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClubsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClubsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClubsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClubsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClubsRecordData({
  String? title,
  String? details,
  String? role,
  String? uid,
  String? fromDate,
  String? toDate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'details': details,
      'role': role,
      'uid': uid,
      'fromDate': fromDate,
      'toDate': toDate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClubsRecordDocumentEquality implements Equality<ClubsRecord> {
  const ClubsRecordDocumentEquality();

  @override
  bool equals(ClubsRecord? e1, ClubsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.details == e2?.details &&
        e1?.role == e2?.role &&
        e1?.uid == e2?.uid &&
        e1?.fromDate == e2?.fromDate &&
        e1?.toDate == e2?.toDate;
  }

  @override
  int hash(ClubsRecord? e) => const ListEquality()
      .hash([e?.title, e?.details, e?.role, e?.uid, e?.fromDate, e?.toDate]);

  @override
  bool isValidKey(Object? o) => o is ClubsRecord;
}

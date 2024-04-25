import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class AwardsRecord extends FirestoreRecord {
  AwardsRecord._(
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

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('awards');

  static Stream<AwardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AwardsRecord.fromSnapshot(s));

  static Future<AwardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AwardsRecord.fromSnapshot(s));

  static AwardsRecord fromSnapshot(DocumentSnapshot snapshot) => AwardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AwardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AwardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AwardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AwardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAwardsRecordData({
  String? uid,
  String? title,
  String? details,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'title': title,
      'details': details,
    }.withoutNulls,
  );

  return firestoreData;
}

class AwardsRecordDocumentEquality implements Equality<AwardsRecord> {
  const AwardsRecordDocumentEquality();

  @override
  bool equals(AwardsRecord? e1, AwardsRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.title == e2?.title &&
        e1?.details == e2?.details;
  }

  @override
  int hash(AwardsRecord? e) =>
      const ListEquality().hash([e?.uid, e?.title, e?.details]);

  @override
  bool isValidKey(Object? o) => o is AwardsRecord;
}

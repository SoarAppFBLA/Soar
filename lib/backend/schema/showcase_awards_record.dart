import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ShowcaseAwardsRecord extends FirestoreRecord {
  ShowcaseAwardsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('showcaseAwards');

  static Stream<ShowcaseAwardsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ShowcaseAwardsRecord.fromSnapshot(s));

  static Future<ShowcaseAwardsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ShowcaseAwardsRecord.fromSnapshot(s));

  static ShowcaseAwardsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ShowcaseAwardsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ShowcaseAwardsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ShowcaseAwardsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ShowcaseAwardsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ShowcaseAwardsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createShowcaseAwardsRecordData({
  String? displayName,
  String? title,
  String? details,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'title': title,
      'details': details,
    }.withoutNulls,
  );

  return firestoreData;
}

class ShowcaseAwardsRecordDocumentEquality
    implements Equality<ShowcaseAwardsRecord> {
  const ShowcaseAwardsRecordDocumentEquality();

  @override
  bool equals(ShowcaseAwardsRecord? e1, ShowcaseAwardsRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.title == e2?.title &&
        e1?.details == e2?.details;
  }

  @override
  int hash(ShowcaseAwardsRecord? e) =>
      const ListEquality().hash([e?.displayName, e?.title, e?.details]);

  @override
  bool isValidKey(Object? o) => o is ShowcaseAwardsRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PerformingArtsRecord extends FirestoreRecord {
  PerformingArtsRecord._(
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

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _details = snapshotData['details'] as String?;
    _uid = snapshotData['uid'] as String?;
    _image = snapshotData['image'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('performingArts');

  static Stream<PerformingArtsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PerformingArtsRecord.fromSnapshot(s));

  static Future<PerformingArtsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PerformingArtsRecord.fromSnapshot(s));

  static PerformingArtsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PerformingArtsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PerformingArtsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PerformingArtsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PerformingArtsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PerformingArtsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPerformingArtsRecordData({
  String? title,
  String? details,
  String? uid,
  String? image,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'details': details,
      'uid': uid,
      'image': image,
    }.withoutNulls,
  );

  return firestoreData;
}

class PerformingArtsRecordDocumentEquality
    implements Equality<PerformingArtsRecord> {
  const PerformingArtsRecordDocumentEquality();

  @override
  bool equals(PerformingArtsRecord? e1, PerformingArtsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.details == e2?.details &&
        e1?.uid == e2?.uid &&
        e1?.image == e2?.image;
  }

  @override
  int hash(PerformingArtsRecord? e) =>
      const ListEquality().hash([e?.title, e?.details, e?.uid, e?.image]);

  @override
  bool isValidKey(Object? o) => o is PerformingArtsRecord;
}

import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AcademicsRecord extends FirestoreRecord {
  AcademicsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "year" field.
  String? _year;
  String get year => _year ?? '';
  bool hasYear() => _year != null;

  // "typeClass" field.
  String? _typeClass;
  String get typeClass => _typeClass ?? '';
  bool hasTypeClass() => _typeClass != null;

  // "grade" field.
  String? _grade;
  String get grade => _grade ?? '';
  bool hasGrade() => _grade != null;

  // "gpaUnweighted" field.
  double? _gpaUnweighted;
  double get gpaUnweighted => _gpaUnweighted ?? 0.0;
  bool hasGpaUnweighted() => _gpaUnweighted != null;

  // "gpaWeighted" field.
  double? _gpaWeighted;
  double get gpaWeighted => _gpaWeighted ?? 0.0;
  bool hasGpaWeighted() => _gpaWeighted != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "className" field.
  String? _className;
  String get className => _className ?? '';
  bool hasClassName() => _className != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _year = snapshotData['year'] as String?;
    _typeClass = snapshotData['typeClass'] as String?;
    _grade = snapshotData['grade'] as String?;
    _gpaUnweighted = castToType<double>(snapshotData['gpaUnweighted']);
    _gpaWeighted = castToType<double>(snapshotData['gpaWeighted']);
    _details = snapshotData['details'] as String?;
    _className = snapshotData['className'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('academics');

  static Stream<AcademicsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AcademicsRecord.fromSnapshot(s));

  static Future<AcademicsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AcademicsRecord.fromSnapshot(s));

  static AcademicsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AcademicsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AcademicsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AcademicsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AcademicsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AcademicsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAcademicsRecordData({
  String? uid,
  String? year,
  String? typeClass,
  String? grade,
  double? gpaUnweighted,
  double? gpaWeighted,
  String? details,
  String? className,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'year': year,
      'typeClass': typeClass,
      'grade': grade,
      'gpaUnweighted': gpaUnweighted,
      'gpaWeighted': gpaWeighted,
      'details': details,
      'className': className,
    }.withoutNulls,
  );

  return firestoreData;
}

class AcademicsRecordDocumentEquality implements Equality<AcademicsRecord> {
  const AcademicsRecordDocumentEquality();

  @override
  bool equals(AcademicsRecord? e1, AcademicsRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.year == e2?.year &&
        e1?.typeClass == e2?.typeClass &&
        e1?.grade == e2?.grade &&
        e1?.gpaUnweighted == e2?.gpaUnweighted &&
        e1?.gpaWeighted == e2?.gpaWeighted &&
        e1?.details == e2?.details &&
        e1?.className == e2?.className;
  }

  @override
  int hash(AcademicsRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.year,
        e?.typeClass,
        e?.grade,
        e?.gpaUnweighted,
        e?.gpaWeighted,
        e?.details,
        e?.className
      ]);

  @override
  bool isValidKey(Object? o) => o is AcademicsRecord;
}

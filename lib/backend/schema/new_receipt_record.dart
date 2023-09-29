import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewReceiptRecord extends FirestoreRecord {
  NewReceiptRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "customerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "Item" field.
  String? _item;
  String get item => _item ?? '';
  bool hasItem() => _item != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _customerName = snapshotData['customerName'] as String?;
    _item = snapshotData['Item'] as String?;
    _description = snapshotData['Description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newReceipt');

  static Stream<NewReceiptRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewReceiptRecord.fromSnapshot(s));

  static Future<NewReceiptRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewReceiptRecord.fromSnapshot(s));

  static NewReceiptRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NewReceiptRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewReceiptRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewReceiptRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewReceiptRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewReceiptRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewReceiptRecordData({
  String? customerName,
  String? item,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customerName': customerName,
      'Item': item,
      'Description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewReceiptRecordDocumentEquality implements Equality<NewReceiptRecord> {
  const NewReceiptRecordDocumentEquality();

  @override
  bool equals(NewReceiptRecord? e1, NewReceiptRecord? e2) {
    return e1?.customerName == e2?.customerName &&
        e1?.item == e2?.item &&
        e1?.description == e2?.description;
  }

  @override
  int hash(NewReceiptRecord? e) =>
      const ListEquality().hash([e?.customerName, e?.item, e?.description]);

  @override
  bool isValidKey(Object? o) => o is NewReceiptRecord;
}

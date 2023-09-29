import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClientRecord extends FirestoreRecord {
  ClientRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "customerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customerEmail" field.
  String? _customerEmail;
  String get customerEmail => _customerEmail ?? '';
  bool hasCustomerEmail() => _customerEmail != null;

  // "customerNumber" field.
  int? _customerNumber;
  int get customerNumber => _customerNumber ?? 0;
  bool hasCustomerNumber() => _customerNumber != null;

  void _initializeFields() {
    _customerName = snapshotData['customerName'] as String?;
    _customerEmail = snapshotData['customerEmail'] as String?;
    _customerNumber = castToType<int>(snapshotData['customerNumber']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('client');

  static Stream<ClientRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClientRecord.fromSnapshot(s));

  static Future<ClientRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClientRecord.fromSnapshot(s));

  static ClientRecord fromSnapshot(DocumentSnapshot snapshot) => ClientRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClientRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClientRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClientRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClientRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClientRecordData({
  String? customerName,
  String? customerEmail,
  int? customerNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customerName': customerName,
      'customerEmail': customerEmail,
      'customerNumber': customerNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClientRecordDocumentEquality implements Equality<ClientRecord> {
  const ClientRecordDocumentEquality();

  @override
  bool equals(ClientRecord? e1, ClientRecord? e2) {
    return e1?.customerName == e2?.customerName &&
        e1?.customerEmail == e2?.customerEmail &&
        e1?.customerNumber == e2?.customerNumber;
  }

  @override
  int hash(ClientRecord? e) => const ListEquality()
      .hash([e?.customerName, e?.customerEmail, e?.customerNumber]);

  @override
  bool isValidKey(Object? o) => o is ClientRecord;
}

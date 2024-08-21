import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';

@immutable
class CloudNote {
  final String documentId;
  final String ownerUserId;
  final String text;
  const CloudNote({
    required this.documentId,
    required this.ownerUserId,
    required this.text,
  });
  // CloudNote.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
  //     : this(
  //         documentId: snapshot.id,
  //         ownerUserId: snapshot.data()[ownerUserIdFieldName] as String,
  //         text: snapshot.data()[textFieldName] as String,
  //       );
  CloudNote.fromSnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : documentId = snapshot.id,
        ownerUserId = snapshot.data()['ownerUserId'] != null
            ? snapshot.data()['ownerUserId'] as String
            : 'Unknown', // Provide a default value or handle null
        text = snapshot.data()['text'] != null
            ? snapshot.data()['text'] as String
            : ''; // Provide a default value or handle null
}

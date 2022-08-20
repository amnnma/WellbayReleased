import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'authors_record.g.dart';

abstract class AuthorsRecord
    implements Built<AuthorsRecord, AuthorsRecordBuilder> {
  static Serializer<AuthorsRecord> get serializer => _$authorsRecordSerializer;

  String? get name;

  String? get profileImage;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AuthorsRecordBuilder builder) => builder
    ..name = ''
    ..profileImage = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('authors');

  static Stream<AuthorsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AuthorsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AuthorsRecord._();
  factory AuthorsRecord([void Function(AuthorsRecordBuilder) updates]) =
      _$AuthorsRecord;

  static AuthorsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAuthorsRecordData({
  String? name,
  String? profileImage,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    AuthorsRecord.serializer,
    AuthorsRecord(
      (a) => a
        ..name = name
        ..profileImage = profileImage
        ..description = description,
    ),
  );

  return firestoreData;
}

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'user_searches_record.g.dart';

abstract class UserSearchesRecord
    implements Built<UserSearchesRecord, UserSearchesRecordBuilder> {
  static Serializer<UserSearchesRecord> get serializer =>
      _$userSearchesRecordSerializer;

  String? get searchText;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UserSearchesRecordBuilder builder) =>
      builder..searchText = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('user_searches');

  static Stream<UserSearchesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UserSearchesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UserSearchesRecord._();
  factory UserSearchesRecord(
          [void Function(UserSearchesRecordBuilder) updates]) =
      _$UserSearchesRecord;

  static UserSearchesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUserSearchesRecordData({
  String? searchText,
}) {
  final firestoreData = serializers.toFirestore(
    UserSearchesRecord.serializer,
    UserSearchesRecord(
      (u) => u..searchText = searchText,
    ),
  );

  return firestoreData;
}

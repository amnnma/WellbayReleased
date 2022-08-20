import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_courses_record.g.dart';

abstract class UsersCoursesRecord
    implements Built<UsersCoursesRecord, UsersCoursesRecordBuilder> {
  static Serializer<UsersCoursesRecord> get serializer =>
      _$usersCoursesRecordSerializer;

  DocumentReference? get userRef;

  DocumentReference? get refCourse;

  int? get progress;

  bool? get courseFinished;

  @BuiltValueField(wireName: 'DUPnumberOfLessons')
  int? get dUPnumberOfLessons;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersCoursesRecordBuilder builder) => builder
    ..progress = 0
    ..courseFinished = false
    ..dUPnumberOfLessons = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users_courses');

  static Stream<UsersCoursesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersCoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersCoursesRecord._();
  factory UsersCoursesRecord(
          [void Function(UsersCoursesRecordBuilder) updates]) =
      _$UsersCoursesRecord;

  static UsersCoursesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersCoursesRecordData({
  DocumentReference? userRef,
  DocumentReference? refCourse,
  int? progress,
  bool? courseFinished,
  int? dUPnumberOfLessons,
}) {
  final firestoreData = serializers.toFirestore(
    UsersCoursesRecord.serializer,
    UsersCoursesRecord(
      (u) => u
        ..userRef = userRef
        ..refCourse = refCourse
        ..progress = progress
        ..courseFinished = courseFinished
        ..dUPnumberOfLessons = dUPnumberOfLessons,
    ),
  );

  return firestoreData;
}

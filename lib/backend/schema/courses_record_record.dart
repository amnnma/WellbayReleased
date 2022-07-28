import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'courses_record_record.g.dart';

abstract class CoursesRecordRecord
    implements Built<CoursesRecordRecord, CoursesRecordRecordBuilder> {
  static Serializer<CoursesRecordRecord> get serializer =>
      _$coursesRecordRecordSerializer;

  @nullable
  String get courseName;

  @nullable
  BuiltList<DocumentReference> get videoRef;

  @nullable
  String get courseImage;

  @nullable
  int get courseType;

  @nullable
  DocumentReference get authorsRef;

  @nullable
  @BuiltValueField(wireName: 'WhatLearn')
  bool get whatLearn;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CoursesRecordRecordBuilder builder) => builder
    ..courseName = ''
    ..videoRef = ListBuilder()
    ..courseImage = ''
    ..courseType = 0
    ..whatLearn = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses_record');

  static Stream<CoursesRecordRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CoursesRecordRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  CoursesRecordRecord._();
  factory CoursesRecordRecord(
          [void Function(CoursesRecordRecordBuilder) updates]) =
      _$CoursesRecordRecord;

  static CoursesRecordRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCoursesRecordRecordData({
  String courseName,
  String courseImage,
  int courseType,
  DocumentReference authorsRef,
  bool whatLearn,
}) =>
    serializers.toFirestore(
        CoursesRecordRecord.serializer,
        CoursesRecordRecord((c) => c
          ..courseName = courseName
          ..videoRef = null
          ..courseImage = courseImage
          ..courseType = courseType
          ..authorsRef = authorsRef
          ..whatLearn = whatLearn));

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'courses_record.g.dart';

abstract class CoursesRecord
    implements Built<CoursesRecord, CoursesRecordBuilder> {
  static Serializer<CoursesRecord> get serializer => _$coursesRecordSerializer;

  @nullable
  String get courseName;

  @nullable
  BuiltList<DocumentReference> get videoRef;

  @nullable
  String get courseImage;

  @nullable
  int get courseType;

  @nullable
  BuiltList<DocumentReference> get authorsRef;

  @nullable
  @BuiltValueField(wireName: 'WhatLearn')
  bool get whatLearn;

  @nullable
  @BuiltValueField(wireName: 'HowWork')
  bool get howWork;

  @nullable
  int get courseLength;

  @nullable
  int get numberOfLessons;

  @nullable
  String get courseEntryImage;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(CoursesRecordBuilder builder) => builder
    ..courseName = ''
    ..videoRef = ListBuilder()
    ..courseImage = ''
    ..courseType = 0
    ..authorsRef = ListBuilder()
    ..whatLearn = false
    ..howWork = false
    ..courseLength = 0
    ..numberOfLessons = 0
    ..courseEntryImage = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  CoursesRecord._();
  factory CoursesRecord([void Function(CoursesRecordBuilder) updates]) =
      _$CoursesRecord;

  static CoursesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createCoursesRecordData({
  String courseName,
  String courseImage,
  int courseType,
  bool whatLearn,
  bool howWork,
  int courseLength,
  int numberOfLessons,
  String courseEntryImage,
}) =>
    serializers.toFirestore(
        CoursesRecord.serializer,
        CoursesRecord((c) => c
          ..courseName = courseName
          ..videoRef = null
          ..courseImage = courseImage
          ..courseType = courseType
          ..authorsRef = null
          ..whatLearn = whatLearn
          ..howWork = howWork
          ..courseLength = courseLength
          ..numberOfLessons = numberOfLessons
          ..courseEntryImage = courseEntryImage));

import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_record.g.dart';

abstract class VideoRecord implements Built<VideoRecord, VideoRecordBuilder> {
  static Serializer<VideoRecord> get serializer => _$videoRecordSerializer;

  String? get name;

  String? get videoLink;

  String? get journalNoteText;

  int? get index;

  DocumentReference? get courseRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideoRecordBuilder builder) => builder
    ..name = ''
    ..videoLink = ''
    ..journalNoteText = ''
    ..index = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video');

  static Stream<VideoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideoRecord._();
  factory VideoRecord([void Function(VideoRecordBuilder) updates]) =
      _$VideoRecord;

  static VideoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideoRecordData({
  String? name,
  String? videoLink,
  String? journalNoteText,
  int? index,
  DocumentReference? courseRef,
}) {
  final firestoreData = serializers.toFirestore(
    VideoRecord.serializer,
    VideoRecord(
      (v) => v
        ..name = name
        ..videoLink = videoLink
        ..journalNoteText = journalNoteText
        ..index = index
        ..courseRef = courseRef,
    ),
  );

  return firestoreData;
}

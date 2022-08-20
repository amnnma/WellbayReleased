import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_meditations_record.g.dart';

abstract class VideoMeditationsRecord
    implements Built<VideoMeditationsRecord, VideoMeditationsRecordBuilder> {
  static Serializer<VideoMeditationsRecord> get serializer =>
      _$videoMeditationsRecordSerializer;

  String? get videoname;

  String? get videoLink;

  int? get videoIndex;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideoMeditationsRecordBuilder builder) =>
      builder
        ..videoname = ''
        ..videoLink = ''
        ..videoIndex = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video_meditations');

  static Stream<VideoMeditationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideoMeditationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideoMeditationsRecord._();
  factory VideoMeditationsRecord(
          [void Function(VideoMeditationsRecordBuilder) updates]) =
      _$VideoMeditationsRecord;

  static VideoMeditationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideoMeditationsRecordData({
  String? videoname,
  String? videoLink,
  int? videoIndex,
}) {
  final firestoreData = serializers.toFirestore(
    VideoMeditationsRecord.serializer,
    VideoMeditationsRecord(
      (v) => v
        ..videoname = videoname
        ..videoLink = videoLink
        ..videoIndex = videoIndex,
    ),
  );

  return firestoreData;
}

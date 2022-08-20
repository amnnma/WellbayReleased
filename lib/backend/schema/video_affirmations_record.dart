import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'video_affirmations_record.g.dart';

abstract class VideoAffirmationsRecord
    implements Built<VideoAffirmationsRecord, VideoAffirmationsRecordBuilder> {
  static Serializer<VideoAffirmationsRecord> get serializer =>
      _$videoAffirmationsRecordSerializer;

  String? get videoname;

  String? get videoLink;

  int? get videoIndex;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideoAffirmationsRecordBuilder builder) =>
      builder
        ..videoname = ''
        ..videoLink = ''
        ..videoIndex = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('video_affirmations');

  static Stream<VideoAffirmationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideoAffirmationsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideoAffirmationsRecord._();
  factory VideoAffirmationsRecord(
          [void Function(VideoAffirmationsRecordBuilder) updates]) =
      _$VideoAffirmationsRecord;

  static VideoAffirmationsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideoAffirmationsRecordData({
  String? videoname,
  String? videoLink,
  int? videoIndex,
}) {
  final firestoreData = serializers.toFirestore(
    VideoAffirmationsRecord.serializer,
    VideoAffirmationsRecord(
      (v) => v
        ..videoname = videoname
        ..videoLink = videoLink
        ..videoIndex = videoIndex,
    ),
  );

  return firestoreData;
}

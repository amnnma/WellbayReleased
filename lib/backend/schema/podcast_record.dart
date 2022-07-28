import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'podcast_record.g.dart';

abstract class PodcastRecord
    implements Built<PodcastRecord, PodcastRecordBuilder> {
  static Serializer<PodcastRecord> get serializer => _$podcastRecordSerializer;

  @nullable
  int get podcastid;

  @nullable
  String get podcasttitle;

  @nullable
  String get podcastpath;

  @nullable
  @BuiltValueField(wireName: 'Person')
  DocumentReference get person;

  @nullable
  String get podcastImage;

  @nullable
  String get podcastCreatename;

  @nullable
  String get podcastType;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PodcastRecordBuilder builder) => builder
    ..podcastid = 0
    ..podcasttitle = ''
    ..podcastpath = ''
    ..podcastImage = ''
    ..podcastCreatename = ''
    ..podcastType = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('podcast');

  static Stream<PodcastRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<PodcastRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PodcastRecord._();
  factory PodcastRecord([void Function(PodcastRecordBuilder) updates]) =
      _$PodcastRecord;

  static PodcastRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createPodcastRecordData({
  int podcastid,
  String podcasttitle,
  String podcastpath,
  DocumentReference person,
  String podcastImage,
  String podcastCreatename,
  String podcastType,
}) =>
    serializers.toFirestore(
        PodcastRecord.serializer,
        PodcastRecord((p) => p
          ..podcastid = podcastid
          ..podcasttitle = podcasttitle
          ..podcastpath = podcastpath
          ..person = person
          ..podcastImage = podcastImage
          ..podcastCreatename = podcastCreatename
          ..podcastType = podcastType));

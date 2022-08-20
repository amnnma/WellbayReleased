import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'live_sessions_record.g.dart';

abstract class LiveSessionsRecord
    implements Built<LiveSessionsRecord, LiveSessionsRecordBuilder> {
  static Serializer<LiveSessionsRecord> get serializer =>
      _$liveSessionsRecordSerializer;

  String? get sessionName;

  String? get sessionDescription;

  String? get sessionTherapist;

  String? get sessionHowPrepare;

  String? get sessionScienceBehind;

  String? get sessionAgenda;

  String? get sessionZoomLink;

  String? get sessionImage;

  int? get sessionLengthMinutes;

  String? get sessionImageEntry;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LiveSessionsRecordBuilder builder) => builder
    ..sessionName = ''
    ..sessionDescription = ''
    ..sessionTherapist = ''
    ..sessionHowPrepare = ''
    ..sessionScienceBehind = ''
    ..sessionAgenda = ''
    ..sessionZoomLink = ''
    ..sessionImage = ''
    ..sessionLengthMinutes = 0
    ..sessionImageEntry = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('live_sessions');

  static Stream<LiveSessionsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LiveSessionsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LiveSessionsRecord._();
  factory LiveSessionsRecord(
          [void Function(LiveSessionsRecordBuilder) updates]) =
      _$LiveSessionsRecord;

  static LiveSessionsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLiveSessionsRecordData({
  String? sessionName,
  String? sessionDescription,
  String? sessionTherapist,
  String? sessionHowPrepare,
  String? sessionScienceBehind,
  String? sessionAgenda,
  String? sessionZoomLink,
  String? sessionImage,
  int? sessionLengthMinutes,
  String? sessionImageEntry,
}) {
  final firestoreData = serializers.toFirestore(
    LiveSessionsRecord.serializer,
    LiveSessionsRecord(
      (l) => l
        ..sessionName = sessionName
        ..sessionDescription = sessionDescription
        ..sessionTherapist = sessionTherapist
        ..sessionHowPrepare = sessionHowPrepare
        ..sessionScienceBehind = sessionScienceBehind
        ..sessionAgenda = sessionAgenda
        ..sessionZoomLink = sessionZoomLink
        ..sessionImage = sessionImage
        ..sessionLengthMinutes = sessionLengthMinutes
        ..sessionImageEntry = sessionImageEntry,
    ),
  );

  return firestoreData;
}

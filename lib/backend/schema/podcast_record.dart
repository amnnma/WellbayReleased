import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'podcast_record.g.dart';

abstract class PodcastRecord
    implements Built<PodcastRecord, PodcastRecordBuilder> {
  static Serializer<PodcastRecord> get serializer => _$podcastRecordSerializer;

  int? get podcastid;

  String? get podcasttitle;

  String? get podcastpath;

  @BuiltValueField(wireName: 'Person')
  DocumentReference? get person;

  String? get podcastImage;

  String? get podcastCreatename;

  DocumentReference? get userRef;

  DateTime? get lastUpdated;

  String? get video;

  String? get podcastdescription;

  BuiltList<String>? get podcastType;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PodcastRecordBuilder builder) => builder
    ..podcastid = 0
    ..podcasttitle = ''
    ..podcastpath = ''
    ..podcastImage = ''
    ..podcastCreatename = ''
    ..video = ''
    ..podcastdescription = ''
    ..podcastType = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('podcast');

  static Stream<PodcastRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PodcastRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static PodcastRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      PodcastRecord(
        (c) => c
          ..podcastid = snapshot.data['podcastid']?.round()
          ..podcasttitle = snapshot.data['podcasttitle']
          ..podcastpath = snapshot.data['podcastpath']
          ..person = safeGet(() => toRef(snapshot.data['Person']))
          ..podcastImage = snapshot.data['podcastImage']
          ..podcastCreatename = snapshot.data['podcastCreatename']
          ..userRef = safeGet(() => toRef(snapshot.data['userRef']))
          ..lastUpdated = safeGet(() =>
              DateTime.fromMillisecondsSinceEpoch(snapshot.data['lastUpdated']))
          ..video = snapshot.data['video']
          ..podcastdescription = snapshot.data['podcastdescription']
          ..podcastType =
              safeGet(() => ListBuilder(snapshot.data['podcastType']))
          ..ffRef = PodcastRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<PodcastRecord>> search(
          {String? term,
          FutureOr<LatLng>? location,
          int? maxResults,
          double? searchRadiusMeters}) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'podcast',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
          )
          .then((r) => r.map(fromAlgolia).toList());

  PodcastRecord._();
  factory PodcastRecord([void Function(PodcastRecordBuilder) updates]) =
      _$PodcastRecord;

  static PodcastRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPodcastRecordData({
  int? podcastid,
  String? podcasttitle,
  String? podcastpath,
  DocumentReference? person,
  String? podcastImage,
  String? podcastCreatename,
  DocumentReference? userRef,
  DateTime? lastUpdated,
  String? video,
  String? podcastdescription,
}) {
  final firestoreData = serializers.toFirestore(
    PodcastRecord.serializer,
    PodcastRecord(
      (p) => p
        ..podcastid = podcastid
        ..podcasttitle = podcasttitle
        ..podcastpath = podcastpath
        ..person = person
        ..podcastImage = podcastImage
        ..podcastCreatename = podcastCreatename
        ..userRef = userRef
        ..lastUpdated = lastUpdated
        ..video = video
        ..podcastdescription = podcastdescription
        ..podcastType = null,
    ),
  );

  return firestoreData;
}

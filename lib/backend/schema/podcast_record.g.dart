// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podcast_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PodcastRecord> _$podcastRecordSerializer =
    new _$PodcastRecordSerializer();

class _$PodcastRecordSerializer implements StructuredSerializer<PodcastRecord> {
  @override
  final Iterable<Type> types = const [PodcastRecord, _$PodcastRecord];
  @override
  final String wireName = 'PodcastRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PodcastRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.podcastid;
    if (value != null) {
      result
        ..add('podcastid')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.podcasttitle;
    if (value != null) {
      result
        ..add('podcasttitle')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.podcastpath;
    if (value != null) {
      result
        ..add('podcastpath')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.person;
    if (value != null) {
      result
        ..add('Person')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.podcastImage;
    if (value != null) {
      result
        ..add('podcastImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.podcastCreatename;
    if (value != null) {
      result
        ..add('podcastCreatename')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.lastUpdated;
    if (value != null) {
      result
        ..add('lastUpdated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.podcastdescription;
    if (value != null) {
      result
        ..add('podcastdescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.podcastType;
    if (value != null) {
      result
        ..add('podcastType')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PodcastRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PodcastRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'podcastid':
          result.podcastid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'podcasttitle':
          result.podcasttitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'podcastpath':
          result.podcastpath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Person':
          result.person = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'podcastImage':
          result.podcastImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'podcastCreatename':
          result.podcastCreatename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'lastUpdated':
          result.lastUpdated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'podcastdescription':
          result.podcastdescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'podcastType':
          result.podcastType.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PodcastRecord extends PodcastRecord {
  @override
  final int? podcastid;
  @override
  final String? podcasttitle;
  @override
  final String? podcastpath;
  @override
  final DocumentReference<Object?>? person;
  @override
  final String? podcastImage;
  @override
  final String? podcastCreatename;
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DateTime? lastUpdated;
  @override
  final String? video;
  @override
  final String? podcastdescription;
  @override
  final BuiltList<String>? podcastType;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PodcastRecord([void Function(PodcastRecordBuilder)? updates]) =>
      (new PodcastRecordBuilder()..update(updates))._build();

  _$PodcastRecord._(
      {this.podcastid,
      this.podcasttitle,
      this.podcastpath,
      this.person,
      this.podcastImage,
      this.podcastCreatename,
      this.userRef,
      this.lastUpdated,
      this.video,
      this.podcastdescription,
      this.podcastType,
      this.ffRef})
      : super._();

  @override
  PodcastRecord rebuild(void Function(PodcastRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PodcastRecordBuilder toBuilder() => new PodcastRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PodcastRecord &&
        podcastid == other.podcastid &&
        podcasttitle == other.podcasttitle &&
        podcastpath == other.podcastpath &&
        person == other.person &&
        podcastImage == other.podcastImage &&
        podcastCreatename == other.podcastCreatename &&
        userRef == other.userRef &&
        lastUpdated == other.lastUpdated &&
        video == other.video &&
        podcastdescription == other.podcastdescription &&
        podcastType == other.podcastType &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, podcastid.hashCode),
                                                podcasttitle.hashCode),
                                            podcastpath.hashCode),
                                        person.hashCode),
                                    podcastImage.hashCode),
                                podcastCreatename.hashCode),
                            userRef.hashCode),
                        lastUpdated.hashCode),
                    video.hashCode),
                podcastdescription.hashCode),
            podcastType.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PodcastRecord')
          ..add('podcastid', podcastid)
          ..add('podcasttitle', podcasttitle)
          ..add('podcastpath', podcastpath)
          ..add('person', person)
          ..add('podcastImage', podcastImage)
          ..add('podcastCreatename', podcastCreatename)
          ..add('userRef', userRef)
          ..add('lastUpdated', lastUpdated)
          ..add('video', video)
          ..add('podcastdescription', podcastdescription)
          ..add('podcastType', podcastType)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PodcastRecordBuilder
    implements Builder<PodcastRecord, PodcastRecordBuilder> {
  _$PodcastRecord? _$v;

  int? _podcastid;
  int? get podcastid => _$this._podcastid;
  set podcastid(int? podcastid) => _$this._podcastid = podcastid;

  String? _podcasttitle;
  String? get podcasttitle => _$this._podcasttitle;
  set podcasttitle(String? podcasttitle) => _$this._podcasttitle = podcasttitle;

  String? _podcastpath;
  String? get podcastpath => _$this._podcastpath;
  set podcastpath(String? podcastpath) => _$this._podcastpath = podcastpath;

  DocumentReference<Object?>? _person;
  DocumentReference<Object?>? get person => _$this._person;
  set person(DocumentReference<Object?>? person) => _$this._person = person;

  String? _podcastImage;
  String? get podcastImage => _$this._podcastImage;
  set podcastImage(String? podcastImage) => _$this._podcastImage = podcastImage;

  String? _podcastCreatename;
  String? get podcastCreatename => _$this._podcastCreatename;
  set podcastCreatename(String? podcastCreatename) =>
      _$this._podcastCreatename = podcastCreatename;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  String? _podcastdescription;
  String? get podcastdescription => _$this._podcastdescription;
  set podcastdescription(String? podcastdescription) =>
      _$this._podcastdescription = podcastdescription;

  ListBuilder<String>? _podcastType;
  ListBuilder<String> get podcastType =>
      _$this._podcastType ??= new ListBuilder<String>();
  set podcastType(ListBuilder<String>? podcastType) =>
      _$this._podcastType = podcastType;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PodcastRecordBuilder() {
    PodcastRecord._initializeBuilder(this);
  }

  PodcastRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _podcastid = $v.podcastid;
      _podcasttitle = $v.podcasttitle;
      _podcastpath = $v.podcastpath;
      _person = $v.person;
      _podcastImage = $v.podcastImage;
      _podcastCreatename = $v.podcastCreatename;
      _userRef = $v.userRef;
      _lastUpdated = $v.lastUpdated;
      _video = $v.video;
      _podcastdescription = $v.podcastdescription;
      _podcastType = $v.podcastType?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PodcastRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PodcastRecord;
  }

  @override
  void update(void Function(PodcastRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PodcastRecord build() => _build();

  _$PodcastRecord _build() {
    _$PodcastRecord _$result;
    try {
      _$result = _$v ??
          new _$PodcastRecord._(
              podcastid: podcastid,
              podcasttitle: podcasttitle,
              podcastpath: podcastpath,
              person: person,
              podcastImage: podcastImage,
              podcastCreatename: podcastCreatename,
              userRef: userRef,
              lastUpdated: lastUpdated,
              video: video,
              podcastdescription: podcastdescription,
              podcastType: _podcastType?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'podcastType';
        _podcastType?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PodcastRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

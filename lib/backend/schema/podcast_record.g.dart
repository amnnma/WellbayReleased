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
  Iterable<Object> serialize(Serializers serializers, PodcastRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
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
                DocumentReference, const [const FullType(Object)])));
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
    value = object.podcastType;
    if (value != null) {
      result
        ..add('podcastType')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  PodcastRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PodcastRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'podcastid':
          result.podcastid = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'podcasttitle':
          result.podcasttitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'podcastpath':
          result.podcastpath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Person':
          result.person = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'podcastImage':
          result.podcastImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'podcastCreatename':
          result.podcastCreatename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'podcastType':
          result.podcastType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$PodcastRecord extends PodcastRecord {
  @override
  final int podcastid;
  @override
  final String podcasttitle;
  @override
  final String podcastpath;
  @override
  final DocumentReference<Object> person;
  @override
  final String podcastImage;
  @override
  final String podcastCreatename;
  @override
  final String podcastType;
  @override
  final DocumentReference<Object> reference;

  factory _$PodcastRecord([void Function(PodcastRecordBuilder) updates]) =>
      (new PodcastRecordBuilder()..update(updates))._build();

  _$PodcastRecord._(
      {this.podcastid,
      this.podcasttitle,
      this.podcastpath,
      this.person,
      this.podcastImage,
      this.podcastCreatename,
      this.podcastType,
      this.reference})
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
        podcastType == other.podcastType &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
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
            podcastType.hashCode),
        reference.hashCode));
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
          ..add('podcastType', podcastType)
          ..add('reference', reference))
        .toString();
  }
}

class PodcastRecordBuilder
    implements Builder<PodcastRecord, PodcastRecordBuilder> {
  _$PodcastRecord _$v;

  int _podcastid;
  int get podcastid => _$this._podcastid;
  set podcastid(int podcastid) => _$this._podcastid = podcastid;

  String _podcasttitle;
  String get podcasttitle => _$this._podcasttitle;
  set podcasttitle(String podcasttitle) => _$this._podcasttitle = podcasttitle;

  String _podcastpath;
  String get podcastpath => _$this._podcastpath;
  set podcastpath(String podcastpath) => _$this._podcastpath = podcastpath;

  DocumentReference<Object> _person;
  DocumentReference<Object> get person => _$this._person;
  set person(DocumentReference<Object> person) => _$this._person = person;

  String _podcastImage;
  String get podcastImage => _$this._podcastImage;
  set podcastImage(String podcastImage) => _$this._podcastImage = podcastImage;

  String _podcastCreatename;
  String get podcastCreatename => _$this._podcastCreatename;
  set podcastCreatename(String podcastCreatename) =>
      _$this._podcastCreatename = podcastCreatename;

  String _podcastType;
  String get podcastType => _$this._podcastType;
  set podcastType(String podcastType) => _$this._podcastType = podcastType;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

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
      _podcastType = $v.podcastType;
      _reference = $v.reference;
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
  void update(void Function(PodcastRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  PodcastRecord build() => _build();

  _$PodcastRecord _build() {
    final _$result = _$v ??
        new _$PodcastRecord._(
            podcastid: podcastid,
            podcasttitle: podcasttitle,
            podcastpath: podcastpath,
            person: person,
            podcastImage: podcastImage,
            podcastCreatename: podcastCreatename,
            podcastType: podcastType,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideoRecord> _$videoRecordSerializer = new _$VideoRecordSerializer();

class _$VideoRecordSerializer implements StructuredSerializer<VideoRecord> {
  @override
  final Iterable<Type> types = const [VideoRecord, _$VideoRecord];
  @override
  final String wireName = 'VideoRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, VideoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.videoname;
    if (value != null) {
      result
        ..add('videoname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videourl;
    if (value != null) {
      result
        ..add('videourl')
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
  VideoRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'videoname':
          result.videoname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videourl':
          result.videourl = serializers.deserialize(value,
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

class _$VideoRecord extends VideoRecord {
  @override
  final String videoname;
  @override
  final String videourl;
  @override
  final DocumentReference<Object> reference;

  factory _$VideoRecord([void Function(VideoRecordBuilder) updates]) =>
      (new VideoRecordBuilder()..update(updates))._build();

  _$VideoRecord._({this.videoname, this.videourl, this.reference}) : super._();

  @override
  VideoRecord rebuild(void Function(VideoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoRecordBuilder toBuilder() => new VideoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoRecord &&
        videoname == other.videoname &&
        videourl == other.videourl &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, videoname.hashCode), videourl.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoRecord')
          ..add('videoname', videoname)
          ..add('videourl', videourl)
          ..add('reference', reference))
        .toString();
  }
}

class VideoRecordBuilder implements Builder<VideoRecord, VideoRecordBuilder> {
  _$VideoRecord _$v;

  String _videoname;
  String get videoname => _$this._videoname;
  set videoname(String videoname) => _$this._videoname = videoname;

  String _videourl;
  String get videourl => _$this._videourl;
  set videourl(String videourl) => _$this._videourl = videourl;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  VideoRecordBuilder() {
    VideoRecord._initializeBuilder(this);
  }

  VideoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _videoname = $v.videoname;
      _videourl = $v.videourl;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideoRecord;
  }

  @override
  void update(void Function(VideoRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoRecord build() => _build();

  _$VideoRecord _build() {
    final _$result = _$v ??
        new _$VideoRecord._(
            videoname: videoname, videourl: videourl, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

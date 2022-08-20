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
  Iterable<Object?> serialize(Serializers serializers, VideoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoLink;
    if (value != null) {
      result
        ..add('videoLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.journalNoteText;
    if (value != null) {
      result
        ..add('journalNoteText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.index;
    if (value != null) {
      result
        ..add('index')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.courseRef;
    if (value != null) {
      result
        ..add('courseRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
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
  VideoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videoLink':
          result.videoLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'journalNoteText':
          result.journalNoteText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'index':
          result.index = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'courseRef':
          result.courseRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
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

class _$VideoRecord extends VideoRecord {
  @override
  final String? name;
  @override
  final String? videoLink;
  @override
  final String? journalNoteText;
  @override
  final int? index;
  @override
  final DocumentReference<Object?>? courseRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideoRecord([void Function(VideoRecordBuilder)? updates]) =>
      (new VideoRecordBuilder()..update(updates))._build();

  _$VideoRecord._(
      {this.name,
      this.videoLink,
      this.journalNoteText,
      this.index,
      this.courseRef,
      this.ffRef})
      : super._();

  @override
  VideoRecord rebuild(void Function(VideoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideoRecordBuilder toBuilder() => new VideoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideoRecord &&
        name == other.name &&
        videoLink == other.videoLink &&
        journalNoteText == other.journalNoteText &&
        index == other.index &&
        courseRef == other.courseRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), videoLink.hashCode),
                    journalNoteText.hashCode),
                index.hashCode),
            courseRef.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideoRecord')
          ..add('name', name)
          ..add('videoLink', videoLink)
          ..add('journalNoteText', journalNoteText)
          ..add('index', index)
          ..add('courseRef', courseRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideoRecordBuilder implements Builder<VideoRecord, VideoRecordBuilder> {
  _$VideoRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _videoLink;
  String? get videoLink => _$this._videoLink;
  set videoLink(String? videoLink) => _$this._videoLink = videoLink;

  String? _journalNoteText;
  String? get journalNoteText => _$this._journalNoteText;
  set journalNoteText(String? journalNoteText) =>
      _$this._journalNoteText = journalNoteText;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  DocumentReference<Object?>? _courseRef;
  DocumentReference<Object?>? get courseRef => _$this._courseRef;
  set courseRef(DocumentReference<Object?>? courseRef) =>
      _$this._courseRef = courseRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideoRecordBuilder() {
    VideoRecord._initializeBuilder(this);
  }

  VideoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _videoLink = $v.videoLink;
      _journalNoteText = $v.journalNoteText;
      _index = $v.index;
      _courseRef = $v.courseRef;
      _ffRef = $v.ffRef;
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
  void update(void Function(VideoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideoRecord build() => _build();

  _$VideoRecord _build() {
    final _$result = _$v ??
        new _$VideoRecord._(
            name: name,
            videoLink: videoLink,
            journalNoteText: journalNoteText,
            index: index,
            courseRef: courseRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_sessions_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LiveSessionsRecord> _$liveSessionsRecordSerializer =
    new _$LiveSessionsRecordSerializer();

class _$LiveSessionsRecordSerializer
    implements StructuredSerializer<LiveSessionsRecord> {
  @override
  final Iterable<Type> types = const [LiveSessionsRecord, _$LiveSessionsRecord];
  @override
  final String wireName = 'LiveSessionsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LiveSessionsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.sessionName;
    if (value != null) {
      result
        ..add('sessionName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionDescription;
    if (value != null) {
      result
        ..add('sessionDescription')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionTherapist;
    if (value != null) {
      result
        ..add('sessionTherapist')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionHowPrepare;
    if (value != null) {
      result
        ..add('sessionHowPrepare')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionScienceBehind;
    if (value != null) {
      result
        ..add('sessionScienceBehind')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionAgenda;
    if (value != null) {
      result
        ..add('sessionAgenda')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionZoomLink;
    if (value != null) {
      result
        ..add('sessionZoomLink')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionImage;
    if (value != null) {
      result
        ..add('sessionImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sessionLengthMinutes;
    if (value != null) {
      result
        ..add('sessionLengthMinutes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sessionImageEntry;
    if (value != null) {
      result
        ..add('sessionImageEntry')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  LiveSessionsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LiveSessionsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sessionName':
          result.sessionName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionDescription':
          result.sessionDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionTherapist':
          result.sessionTherapist = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionHowPrepare':
          result.sessionHowPrepare = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionScienceBehind':
          result.sessionScienceBehind = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionAgenda':
          result.sessionAgenda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionZoomLink':
          result.sessionZoomLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionImage':
          result.sessionImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sessionLengthMinutes':
          result.sessionLengthMinutes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sessionImageEntry':
          result.sessionImageEntry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$LiveSessionsRecord extends LiveSessionsRecord {
  @override
  final String? sessionName;
  @override
  final String? sessionDescription;
  @override
  final String? sessionTherapist;
  @override
  final String? sessionHowPrepare;
  @override
  final String? sessionScienceBehind;
  @override
  final String? sessionAgenda;
  @override
  final String? sessionZoomLink;
  @override
  final String? sessionImage;
  @override
  final int? sessionLengthMinutes;
  @override
  final String? sessionImageEntry;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LiveSessionsRecord(
          [void Function(LiveSessionsRecordBuilder)? updates]) =>
      (new LiveSessionsRecordBuilder()..update(updates))._build();

  _$LiveSessionsRecord._(
      {this.sessionName,
      this.sessionDescription,
      this.sessionTherapist,
      this.sessionHowPrepare,
      this.sessionScienceBehind,
      this.sessionAgenda,
      this.sessionZoomLink,
      this.sessionImage,
      this.sessionLengthMinutes,
      this.sessionImageEntry,
      this.ffRef})
      : super._();

  @override
  LiveSessionsRecord rebuild(
          void Function(LiveSessionsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LiveSessionsRecordBuilder toBuilder() =>
      new LiveSessionsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LiveSessionsRecord &&
        sessionName == other.sessionName &&
        sessionDescription == other.sessionDescription &&
        sessionTherapist == other.sessionTherapist &&
        sessionHowPrepare == other.sessionHowPrepare &&
        sessionScienceBehind == other.sessionScienceBehind &&
        sessionAgenda == other.sessionAgenda &&
        sessionZoomLink == other.sessionZoomLink &&
        sessionImage == other.sessionImage &&
        sessionLengthMinutes == other.sessionLengthMinutes &&
        sessionImageEntry == other.sessionImageEntry &&
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
                                        $jc($jc(0, sessionName.hashCode),
                                            sessionDescription.hashCode),
                                        sessionTherapist.hashCode),
                                    sessionHowPrepare.hashCode),
                                sessionScienceBehind.hashCode),
                            sessionAgenda.hashCode),
                        sessionZoomLink.hashCode),
                    sessionImage.hashCode),
                sessionLengthMinutes.hashCode),
            sessionImageEntry.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LiveSessionsRecord')
          ..add('sessionName', sessionName)
          ..add('sessionDescription', sessionDescription)
          ..add('sessionTherapist', sessionTherapist)
          ..add('sessionHowPrepare', sessionHowPrepare)
          ..add('sessionScienceBehind', sessionScienceBehind)
          ..add('sessionAgenda', sessionAgenda)
          ..add('sessionZoomLink', sessionZoomLink)
          ..add('sessionImage', sessionImage)
          ..add('sessionLengthMinutes', sessionLengthMinutes)
          ..add('sessionImageEntry', sessionImageEntry)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LiveSessionsRecordBuilder
    implements Builder<LiveSessionsRecord, LiveSessionsRecordBuilder> {
  _$LiveSessionsRecord? _$v;

  String? _sessionName;
  String? get sessionName => _$this._sessionName;
  set sessionName(String? sessionName) => _$this._sessionName = sessionName;

  String? _sessionDescription;
  String? get sessionDescription => _$this._sessionDescription;
  set sessionDescription(String? sessionDescription) =>
      _$this._sessionDescription = sessionDescription;

  String? _sessionTherapist;
  String? get sessionTherapist => _$this._sessionTherapist;
  set sessionTherapist(String? sessionTherapist) =>
      _$this._sessionTherapist = sessionTherapist;

  String? _sessionHowPrepare;
  String? get sessionHowPrepare => _$this._sessionHowPrepare;
  set sessionHowPrepare(String? sessionHowPrepare) =>
      _$this._sessionHowPrepare = sessionHowPrepare;

  String? _sessionScienceBehind;
  String? get sessionScienceBehind => _$this._sessionScienceBehind;
  set sessionScienceBehind(String? sessionScienceBehind) =>
      _$this._sessionScienceBehind = sessionScienceBehind;

  String? _sessionAgenda;
  String? get sessionAgenda => _$this._sessionAgenda;
  set sessionAgenda(String? sessionAgenda) =>
      _$this._sessionAgenda = sessionAgenda;

  String? _sessionZoomLink;
  String? get sessionZoomLink => _$this._sessionZoomLink;
  set sessionZoomLink(String? sessionZoomLink) =>
      _$this._sessionZoomLink = sessionZoomLink;

  String? _sessionImage;
  String? get sessionImage => _$this._sessionImage;
  set sessionImage(String? sessionImage) => _$this._sessionImage = sessionImage;

  int? _sessionLengthMinutes;
  int? get sessionLengthMinutes => _$this._sessionLengthMinutes;
  set sessionLengthMinutes(int? sessionLengthMinutes) =>
      _$this._sessionLengthMinutes = sessionLengthMinutes;

  String? _sessionImageEntry;
  String? get sessionImageEntry => _$this._sessionImageEntry;
  set sessionImageEntry(String? sessionImageEntry) =>
      _$this._sessionImageEntry = sessionImageEntry;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LiveSessionsRecordBuilder() {
    LiveSessionsRecord._initializeBuilder(this);
  }

  LiveSessionsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _sessionName = $v.sessionName;
      _sessionDescription = $v.sessionDescription;
      _sessionTherapist = $v.sessionTherapist;
      _sessionHowPrepare = $v.sessionHowPrepare;
      _sessionScienceBehind = $v.sessionScienceBehind;
      _sessionAgenda = $v.sessionAgenda;
      _sessionZoomLink = $v.sessionZoomLink;
      _sessionImage = $v.sessionImage;
      _sessionLengthMinutes = $v.sessionLengthMinutes;
      _sessionImageEntry = $v.sessionImageEntry;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LiveSessionsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LiveSessionsRecord;
  }

  @override
  void update(void Function(LiveSessionsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LiveSessionsRecord build() => _build();

  _$LiveSessionsRecord _build() {
    final _$result = _$v ??
        new _$LiveSessionsRecord._(
            sessionName: sessionName,
            sessionDescription: sessionDescription,
            sessionTherapist: sessionTherapist,
            sessionHowPrepare: sessionHowPrepare,
            sessionScienceBehind: sessionScienceBehind,
            sessionAgenda: sessionAgenda,
            sessionZoomLink: sessionZoomLink,
            sessionImage: sessionImage,
            sessionLengthMinutes: sessionLengthMinutes,
            sessionImageEntry: sessionImageEntry,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

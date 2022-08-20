// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gratitude_journal_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GratitudeJournalRecord> _$gratitudeJournalRecordSerializer =
    new _$GratitudeJournalRecordSerializer();

class _$GratitudeJournalRecordSerializer
    implements StructuredSerializer<GratitudeJournalRecord> {
  @override
  final Iterable<Type> types = const [
    GratitudeJournalRecord,
    _$GratitudeJournalRecord
  ];
  @override
  final String wireName = 'GratitudeJournalRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GratitudeJournalRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userRef;
    if (value != null) {
      result
        ..add('userRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.entryText;
    if (value != null) {
      result
        ..add('EntryText')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.postTime;
    if (value != null) {
      result
        ..add('postTime')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  GratitudeJournalRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GratitudeJournalRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userRef':
          result.userRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'EntryText':
          result.entryText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'postTime':
          result.postTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$GratitudeJournalRecord extends GratitudeJournalRecord {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final String? entryText;
  @override
  final DateTime? postTime;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GratitudeJournalRecord(
          [void Function(GratitudeJournalRecordBuilder)? updates]) =>
      (new GratitudeJournalRecordBuilder()..update(updates))._build();

  _$GratitudeJournalRecord._(
      {this.userRef, this.entryText, this.postTime, this.ffRef})
      : super._();

  @override
  GratitudeJournalRecord rebuild(
          void Function(GratitudeJournalRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GratitudeJournalRecordBuilder toBuilder() =>
      new GratitudeJournalRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GratitudeJournalRecord &&
        userRef == other.userRef &&
        entryText == other.entryText &&
        postTime == other.postTime &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userRef.hashCode), entryText.hashCode),
            postTime.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GratitudeJournalRecord')
          ..add('userRef', userRef)
          ..add('entryText', entryText)
          ..add('postTime', postTime)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GratitudeJournalRecordBuilder
    implements Builder<GratitudeJournalRecord, GratitudeJournalRecordBuilder> {
  _$GratitudeJournalRecord? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  String? _entryText;
  String? get entryText => _$this._entryText;
  set entryText(String? entryText) => _$this._entryText = entryText;

  DateTime? _postTime;
  DateTime? get postTime => _$this._postTime;
  set postTime(DateTime? postTime) => _$this._postTime = postTime;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GratitudeJournalRecordBuilder() {
    GratitudeJournalRecord._initializeBuilder(this);
  }

  GratitudeJournalRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _entryText = $v.entryText;
      _postTime = $v.postTime;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GratitudeJournalRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GratitudeJournalRecord;
  }

  @override
  void update(void Function(GratitudeJournalRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GratitudeJournalRecord build() => _build();

  _$GratitudeJournalRecord _build() {
    final _$result = _$v ??
        new _$GratitudeJournalRecord._(
            userRef: userRef,
            entryText: entryText,
            postTime: postTime,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

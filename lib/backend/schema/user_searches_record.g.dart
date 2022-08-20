// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_searches_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserSearchesRecord> _$userSearchesRecordSerializer =
    new _$UserSearchesRecordSerializer();

class _$UserSearchesRecordSerializer
    implements StructuredSerializer<UserSearchesRecord> {
  @override
  final Iterable<Type> types = const [UserSearchesRecord, _$UserSearchesRecord];
  @override
  final String wireName = 'UserSearchesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserSearchesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.searchText;
    if (value != null) {
      result
        ..add('searchText')
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
  UserSearchesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserSearchesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'searchText':
          result.searchText = serializers.deserialize(value,
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

class _$UserSearchesRecord extends UserSearchesRecord {
  @override
  final String? searchText;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UserSearchesRecord(
          [void Function(UserSearchesRecordBuilder)? updates]) =>
      (new UserSearchesRecordBuilder()..update(updates))._build();

  _$UserSearchesRecord._({this.searchText, this.ffRef}) : super._();

  @override
  UserSearchesRecord rebuild(
          void Function(UserSearchesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSearchesRecordBuilder toBuilder() =>
      new UserSearchesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSearchesRecord &&
        searchText == other.searchText &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, searchText.hashCode), ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSearchesRecord')
          ..add('searchText', searchText)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UserSearchesRecordBuilder
    implements Builder<UserSearchesRecord, UserSearchesRecordBuilder> {
  _$UserSearchesRecord? _$v;

  String? _searchText;
  String? get searchText => _$this._searchText;
  set searchText(String? searchText) => _$this._searchText = searchText;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UserSearchesRecordBuilder() {
    UserSearchesRecord._initializeBuilder(this);
  }

  UserSearchesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _searchText = $v.searchText;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSearchesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserSearchesRecord;
  }

  @override
  void update(void Function(UserSearchesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSearchesRecord build() => _build();

  _$UserSearchesRecord _build() {
    final _$result =
        _$v ?? new _$UserSearchesRecord._(searchText: searchText, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

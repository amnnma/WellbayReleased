// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_courses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersCoursesRecord> _$usersCoursesRecordSerializer =
    new _$UsersCoursesRecordSerializer();

class _$UsersCoursesRecordSerializer
    implements StructuredSerializer<UsersCoursesRecord> {
  @override
  final Iterable<Type> types = const [UsersCoursesRecord, _$UsersCoursesRecord];
  @override
  final String wireName = 'UsersCoursesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsersCoursesRecord object,
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
    value = object.refCourse;
    if (value != null) {
      result
        ..add('refCourse')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.progress;
    if (value != null) {
      result
        ..add('progress')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.courseFinished;
    if (value != null) {
      result
        ..add('courseFinished')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dUPnumberOfLessons;
    if (value != null) {
      result
        ..add('DUPnumberOfLessons')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UsersCoursesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersCoursesRecordBuilder();

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
        case 'refCourse':
          result.refCourse = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'progress':
          result.progress = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'courseFinished':
          result.courseFinished = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'DUPnumberOfLessons':
          result.dUPnumberOfLessons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UsersCoursesRecord extends UsersCoursesRecord {
  @override
  final DocumentReference<Object?>? userRef;
  @override
  final DocumentReference<Object?>? refCourse;
  @override
  final int? progress;
  @override
  final bool? courseFinished;
  @override
  final int? dUPnumberOfLessons;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersCoursesRecord(
          [void Function(UsersCoursesRecordBuilder)? updates]) =>
      (new UsersCoursesRecordBuilder()..update(updates))._build();

  _$UsersCoursesRecord._(
      {this.userRef,
      this.refCourse,
      this.progress,
      this.courseFinished,
      this.dUPnumberOfLessons,
      this.ffRef})
      : super._();

  @override
  UsersCoursesRecord rebuild(
          void Function(UsersCoursesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersCoursesRecordBuilder toBuilder() =>
      new UsersCoursesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersCoursesRecord &&
        userRef == other.userRef &&
        refCourse == other.refCourse &&
        progress == other.progress &&
        courseFinished == other.courseFinished &&
        dUPnumberOfLessons == other.dUPnumberOfLessons &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userRef.hashCode), refCourse.hashCode),
                    progress.hashCode),
                courseFinished.hashCode),
            dUPnumberOfLessons.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersCoursesRecord')
          ..add('userRef', userRef)
          ..add('refCourse', refCourse)
          ..add('progress', progress)
          ..add('courseFinished', courseFinished)
          ..add('dUPnumberOfLessons', dUPnumberOfLessons)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersCoursesRecordBuilder
    implements Builder<UsersCoursesRecord, UsersCoursesRecordBuilder> {
  _$UsersCoursesRecord? _$v;

  DocumentReference<Object?>? _userRef;
  DocumentReference<Object?>? get userRef => _$this._userRef;
  set userRef(DocumentReference<Object?>? userRef) => _$this._userRef = userRef;

  DocumentReference<Object?>? _refCourse;
  DocumentReference<Object?>? get refCourse => _$this._refCourse;
  set refCourse(DocumentReference<Object?>? refCourse) =>
      _$this._refCourse = refCourse;

  int? _progress;
  int? get progress => _$this._progress;
  set progress(int? progress) => _$this._progress = progress;

  bool? _courseFinished;
  bool? get courseFinished => _$this._courseFinished;
  set courseFinished(bool? courseFinished) =>
      _$this._courseFinished = courseFinished;

  int? _dUPnumberOfLessons;
  int? get dUPnumberOfLessons => _$this._dUPnumberOfLessons;
  set dUPnumberOfLessons(int? dUPnumberOfLessons) =>
      _$this._dUPnumberOfLessons = dUPnumberOfLessons;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersCoursesRecordBuilder() {
    UsersCoursesRecord._initializeBuilder(this);
  }

  UsersCoursesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userRef = $v.userRef;
      _refCourse = $v.refCourse;
      _progress = $v.progress;
      _courseFinished = $v.courseFinished;
      _dUPnumberOfLessons = $v.dUPnumberOfLessons;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersCoursesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersCoursesRecord;
  }

  @override
  void update(void Function(UsersCoursesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersCoursesRecord build() => _build();

  _$UsersCoursesRecord _build() {
    final _$result = _$v ??
        new _$UsersCoursesRecord._(
            userRef: userRef,
            refCourse: refCourse,
            progress: progress,
            courseFinished: courseFinished,
            dUPnumberOfLessons: dUPnumberOfLessons,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

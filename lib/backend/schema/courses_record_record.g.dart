// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_record_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoursesRecordRecord> _$coursesRecordRecordSerializer =
    new _$CoursesRecordRecordSerializer();

class _$CoursesRecordRecordSerializer
    implements StructuredSerializer<CoursesRecordRecord> {
  @override
  final Iterable<Type> types = const [
    CoursesRecordRecord,
    _$CoursesRecordRecord
  ];
  @override
  final String wireName = 'CoursesRecordRecord';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CoursesRecordRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.courseName;
    if (value != null) {
      result
        ..add('courseName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.videoRef;
    if (value != null) {
      result
        ..add('videoRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.courseImage;
    if (value != null) {
      result
        ..add('courseImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.courseType;
    if (value != null) {
      result
        ..add('courseType')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.authorsRef;
    if (value != null) {
      result
        ..add('authorsRef')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
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
  CoursesRecordRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoursesRecordRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'courseName':
          result.courseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'videoRef':
          result.videoRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'courseImage':
          result.courseImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'courseType':
          result.courseType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'authorsRef':
          result.authorsRef = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
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

class _$CoursesRecordRecord extends CoursesRecordRecord {
  @override
  final String courseName;
  @override
  final BuiltList<DocumentReference<Object>> videoRef;
  @override
  final String courseImage;
  @override
  final int courseType;
  @override
  final DocumentReference<Object> authorsRef;
  @override
  final DocumentReference<Object> reference;

  factory _$CoursesRecordRecord(
          [void Function(CoursesRecordRecordBuilder) updates]) =>
      (new CoursesRecordRecordBuilder()..update(updates))._build();

  _$CoursesRecordRecord._(
      {this.courseName,
      this.videoRef,
      this.courseImage,
      this.courseType,
      this.authorsRef,
      this.reference})
      : super._();

  @override
  CoursesRecordRecord rebuild(
          void Function(CoursesRecordRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoursesRecordRecordBuilder toBuilder() =>
      new CoursesRecordRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoursesRecordRecord &&
        courseName == other.courseName &&
        videoRef == other.videoRef &&
        courseImage == other.courseImage &&
        courseType == other.courseType &&
        authorsRef == other.authorsRef &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, courseName.hashCode), videoRef.hashCode),
                    courseImage.hashCode),
                courseType.hashCode),
            authorsRef.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoursesRecordRecord')
          ..add('courseName', courseName)
          ..add('videoRef', videoRef)
          ..add('courseImage', courseImage)
          ..add('courseType', courseType)
          ..add('authorsRef', authorsRef)
          ..add('reference', reference))
        .toString();
  }
}

class CoursesRecordRecordBuilder
    implements Builder<CoursesRecordRecord, CoursesRecordRecordBuilder> {
  _$CoursesRecordRecord _$v;

  String _courseName;
  String get courseName => _$this._courseName;
  set courseName(String courseName) => _$this._courseName = courseName;

  ListBuilder<DocumentReference<Object>> _videoRef;
  ListBuilder<DocumentReference<Object>> get videoRef =>
      _$this._videoRef ??= new ListBuilder<DocumentReference<Object>>();
  set videoRef(ListBuilder<DocumentReference<Object>> videoRef) =>
      _$this._videoRef = videoRef;

  String _courseImage;
  String get courseImage => _$this._courseImage;
  set courseImage(String courseImage) => _$this._courseImage = courseImage;

  int _courseType;
  int get courseType => _$this._courseType;
  set courseType(int courseType) => _$this._courseType = courseType;

  DocumentReference<Object> _authorsRef;
  DocumentReference<Object> get authorsRef => _$this._authorsRef;
  set authorsRef(DocumentReference<Object> authorsRef) =>
      _$this._authorsRef = authorsRef;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  CoursesRecordRecordBuilder() {
    CoursesRecordRecord._initializeBuilder(this);
  }

  CoursesRecordRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _courseName = $v.courseName;
      _videoRef = $v.videoRef?.toBuilder();
      _courseImage = $v.courseImage;
      _courseType = $v.courseType;
      _authorsRef = $v.authorsRef;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoursesRecordRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoursesRecordRecord;
  }

  @override
  void update(void Function(CoursesRecordRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  CoursesRecordRecord build() => _build();

  _$CoursesRecordRecord _build() {
    _$CoursesRecordRecord _$result;
    try {
      _$result = _$v ??
          new _$CoursesRecordRecord._(
              courseName: courseName,
              videoRef: _videoRef?.build(),
              courseImage: courseImage,
              courseType: courseType,
              authorsRef: authorsRef,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'videoRef';
        _videoRef?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CoursesRecordRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

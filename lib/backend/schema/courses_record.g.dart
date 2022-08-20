// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'courses_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CoursesRecord> _$coursesRecordSerializer =
    new _$CoursesRecordSerializer();

class _$CoursesRecordSerializer implements StructuredSerializer<CoursesRecord> {
  @override
  final Iterable<Type> types = const [CoursesRecord, _$CoursesRecord];
  @override
  final String wireName = 'CoursesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CoursesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
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
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.whatLearn;
    if (value != null) {
      result
        ..add('WhatLearn')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.howWork;
    if (value != null) {
      result
        ..add('HowWork')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.courseLength;
    if (value != null) {
      result
        ..add('courseLength')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.numberOfLessons;
    if (value != null) {
      result
        ..add('numberOfLessons')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.courseEntryImage;
    if (value != null) {
      result
        ..add('courseEntryImage')
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
  CoursesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CoursesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'courseName':
          result.courseName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'videoRef':
          result.videoRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'courseImage':
          result.courseImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'courseType':
          result.courseType = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'authorsRef':
          result.authorsRef.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'WhatLearn':
          result.whatLearn = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'HowWork':
          result.howWork = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'courseLength':
          result.courseLength = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'numberOfLessons':
          result.numberOfLessons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'courseEntryImage':
          result.courseEntryImage = serializers.deserialize(value,
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

class _$CoursesRecord extends CoursesRecord {
  @override
  final String? courseName;
  @override
  final BuiltList<DocumentReference<Object?>>? videoRef;
  @override
  final String? courseImage;
  @override
  final int? courseType;
  @override
  final BuiltList<DocumentReference<Object?>>? authorsRef;
  @override
  final bool? whatLearn;
  @override
  final bool? howWork;
  @override
  final int? courseLength;
  @override
  final int? numberOfLessons;
  @override
  final String? courseEntryImage;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CoursesRecord([void Function(CoursesRecordBuilder)? updates]) =>
      (new CoursesRecordBuilder()..update(updates))._build();

  _$CoursesRecord._(
      {this.courseName,
      this.videoRef,
      this.courseImage,
      this.courseType,
      this.authorsRef,
      this.whatLearn,
      this.howWork,
      this.courseLength,
      this.numberOfLessons,
      this.courseEntryImage,
      this.ffRef})
      : super._();

  @override
  CoursesRecord rebuild(void Function(CoursesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoursesRecordBuilder toBuilder() => new CoursesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoursesRecord &&
        courseName == other.courseName &&
        videoRef == other.videoRef &&
        courseImage == other.courseImage &&
        courseType == other.courseType &&
        authorsRef == other.authorsRef &&
        whatLearn == other.whatLearn &&
        howWork == other.howWork &&
        courseLength == other.courseLength &&
        numberOfLessons == other.numberOfLessons &&
        courseEntryImage == other.courseEntryImage &&
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
                                        $jc($jc(0, courseName.hashCode),
                                            videoRef.hashCode),
                                        courseImage.hashCode),
                                    courseType.hashCode),
                                authorsRef.hashCode),
                            whatLearn.hashCode),
                        howWork.hashCode),
                    courseLength.hashCode),
                numberOfLessons.hashCode),
            courseEntryImage.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CoursesRecord')
          ..add('courseName', courseName)
          ..add('videoRef', videoRef)
          ..add('courseImage', courseImage)
          ..add('courseType', courseType)
          ..add('authorsRef', authorsRef)
          ..add('whatLearn', whatLearn)
          ..add('howWork', howWork)
          ..add('courseLength', courseLength)
          ..add('numberOfLessons', numberOfLessons)
          ..add('courseEntryImage', courseEntryImage)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CoursesRecordBuilder
    implements Builder<CoursesRecord, CoursesRecordBuilder> {
  _$CoursesRecord? _$v;

  String? _courseName;
  String? get courseName => _$this._courseName;
  set courseName(String? courseName) => _$this._courseName = courseName;

  ListBuilder<DocumentReference<Object?>>? _videoRef;
  ListBuilder<DocumentReference<Object?>> get videoRef =>
      _$this._videoRef ??= new ListBuilder<DocumentReference<Object?>>();
  set videoRef(ListBuilder<DocumentReference<Object?>>? videoRef) =>
      _$this._videoRef = videoRef;

  String? _courseImage;
  String? get courseImage => _$this._courseImage;
  set courseImage(String? courseImage) => _$this._courseImage = courseImage;

  int? _courseType;
  int? get courseType => _$this._courseType;
  set courseType(int? courseType) => _$this._courseType = courseType;

  ListBuilder<DocumentReference<Object?>>? _authorsRef;
  ListBuilder<DocumentReference<Object?>> get authorsRef =>
      _$this._authorsRef ??= new ListBuilder<DocumentReference<Object?>>();
  set authorsRef(ListBuilder<DocumentReference<Object?>>? authorsRef) =>
      _$this._authorsRef = authorsRef;

  bool? _whatLearn;
  bool? get whatLearn => _$this._whatLearn;
  set whatLearn(bool? whatLearn) => _$this._whatLearn = whatLearn;

  bool? _howWork;
  bool? get howWork => _$this._howWork;
  set howWork(bool? howWork) => _$this._howWork = howWork;

  int? _courseLength;
  int? get courseLength => _$this._courseLength;
  set courseLength(int? courseLength) => _$this._courseLength = courseLength;

  int? _numberOfLessons;
  int? get numberOfLessons => _$this._numberOfLessons;
  set numberOfLessons(int? numberOfLessons) =>
      _$this._numberOfLessons = numberOfLessons;

  String? _courseEntryImage;
  String? get courseEntryImage => _$this._courseEntryImage;
  set courseEntryImage(String? courseEntryImage) =>
      _$this._courseEntryImage = courseEntryImage;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CoursesRecordBuilder() {
    CoursesRecord._initializeBuilder(this);
  }

  CoursesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _courseName = $v.courseName;
      _videoRef = $v.videoRef?.toBuilder();
      _courseImage = $v.courseImage;
      _courseType = $v.courseType;
      _authorsRef = $v.authorsRef?.toBuilder();
      _whatLearn = $v.whatLearn;
      _howWork = $v.howWork;
      _courseLength = $v.courseLength;
      _numberOfLessons = $v.numberOfLessons;
      _courseEntryImage = $v.courseEntryImage;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoursesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoursesRecord;
  }

  @override
  void update(void Function(CoursesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CoursesRecord build() => _build();

  _$CoursesRecord _build() {
    _$CoursesRecord _$result;
    try {
      _$result = _$v ??
          new _$CoursesRecord._(
              courseName: courseName,
              videoRef: _videoRef?.build(),
              courseImage: courseImage,
              courseType: courseType,
              authorsRef: _authorsRef?.build(),
              whatLearn: whatLearn,
              howWork: howWork,
              courseLength: courseLength,
              numberOfLessons: numberOfLessons,
              courseEntryImage: courseEntryImage,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'videoRef';
        _videoRef?.build();

        _$failedField = 'authorsRef';
        _authorsRef?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CoursesRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

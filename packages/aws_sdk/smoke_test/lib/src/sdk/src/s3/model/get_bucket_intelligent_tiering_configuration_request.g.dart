// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_intelligent_tiering_configuration_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetBucketIntelligentTieringConfigurationRequest
    extends GetBucketIntelligentTieringConfigurationRequest {
  @override
  final String bucket;
  @override
  final String id;

  factory _$GetBucketIntelligentTieringConfigurationRequest(
          [void Function(
                  GetBucketIntelligentTieringConfigurationRequestBuilder)?
              updates]) =>
      (new GetBucketIntelligentTieringConfigurationRequestBuilder()
            ..update(updates))
          ._build();

  _$GetBucketIntelligentTieringConfigurationRequest._(
      {required this.bucket, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        bucket, r'GetBucketIntelligentTieringConfigurationRequest', 'bucket');
    BuiltValueNullFieldError.checkNotNull(
        id, r'GetBucketIntelligentTieringConfigurationRequest', 'id');
  }

  @override
  GetBucketIntelligentTieringConfigurationRequest rebuild(
          void Function(GetBucketIntelligentTieringConfigurationRequestBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketIntelligentTieringConfigurationRequestBuilder toBuilder() =>
      new GetBucketIntelligentTieringConfigurationRequestBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketIntelligentTieringConfigurationRequest &&
        bucket == other.bucket &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, bucket.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class GetBucketIntelligentTieringConfigurationRequestBuilder
    implements
        Builder<GetBucketIntelligentTieringConfigurationRequest,
            GetBucketIntelligentTieringConfigurationRequestBuilder> {
  _$GetBucketIntelligentTieringConfigurationRequest? _$v;

  String? _bucket;
  String? get bucket => _$this._bucket;
  set bucket(String? bucket) => _$this._bucket = bucket;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  GetBucketIntelligentTieringConfigurationRequestBuilder();

  GetBucketIntelligentTieringConfigurationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bucket = $v.bucket;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetBucketIntelligentTieringConfigurationRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketIntelligentTieringConfigurationRequest;
  }

  @override
  void update(
      void Function(GetBucketIntelligentTieringConfigurationRequestBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketIntelligentTieringConfigurationRequest build() => _build();

  _$GetBucketIntelligentTieringConfigurationRequest _build() {
    final _$result = _$v ??
        new _$GetBucketIntelligentTieringConfigurationRequest._(
            bucket: BuiltValueNullFieldError.checkNotNull(bucket,
                r'GetBucketIntelligentTieringConfigurationRequest', 'bucket'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'GetBucketIntelligentTieringConfigurationRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$GetBucketIntelligentTieringConfigurationRequestPayload
    extends GetBucketIntelligentTieringConfigurationRequestPayload {
  factory _$GetBucketIntelligentTieringConfigurationRequestPayload(
          [void Function(
                  GetBucketIntelligentTieringConfigurationRequestPayloadBuilder)?
              updates]) =>
      (new GetBucketIntelligentTieringConfigurationRequestPayloadBuilder()
            ..update(updates))
          ._build();

  _$GetBucketIntelligentTieringConfigurationRequestPayload._() : super._();

  @override
  GetBucketIntelligentTieringConfigurationRequestPayload rebuild(
          void Function(
                  GetBucketIntelligentTieringConfigurationRequestPayloadBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetBucketIntelligentTieringConfigurationRequestPayloadBuilder toBuilder() =>
      new GetBucketIntelligentTieringConfigurationRequestPayloadBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetBucketIntelligentTieringConfigurationRequestPayload;
  }

  @override
  int get hashCode {
    return 547005386;
  }
}

class GetBucketIntelligentTieringConfigurationRequestPayloadBuilder
    implements
        Builder<GetBucketIntelligentTieringConfigurationRequestPayload,
            GetBucketIntelligentTieringConfigurationRequestPayloadBuilder> {
  _$GetBucketIntelligentTieringConfigurationRequestPayload? _$v;

  GetBucketIntelligentTieringConfigurationRequestPayloadBuilder();

  @override
  void replace(GetBucketIntelligentTieringConfigurationRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetBucketIntelligentTieringConfigurationRequestPayload;
  }

  @override
  void update(
      void Function(
              GetBucketIntelligentTieringConfigurationRequestPayloadBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetBucketIntelligentTieringConfigurationRequestPayload build() => _build();

  _$GetBucketIntelligentTieringConfigurationRequestPayload _build() {
    final _$result =
        _$v ?? new _$GetBucketIntelligentTieringConfigurationRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

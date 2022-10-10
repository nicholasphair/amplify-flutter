// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.api_gateway.model.get_tags_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetTagsRequest extends GetTagsRequest {
  @override
  final int? limit;
  @override
  final String? position;
  @override
  final String resourceArn;

  factory _$GetTagsRequest([void Function(GetTagsRequestBuilder)? updates]) =>
      (new GetTagsRequestBuilder()..update(updates))._build();

  _$GetTagsRequest._({this.limit, this.position, required this.resourceArn})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        resourceArn, r'GetTagsRequest', 'resourceArn');
  }

  @override
  GetTagsRequest rebuild(void Function(GetTagsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTagsRequestBuilder toBuilder() =>
      new GetTagsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTagsRequest &&
        limit == other.limit &&
        position == other.position &&
        resourceArn == other.resourceArn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, limit.hashCode), position.hashCode), resourceArn.hashCode));
  }
}

class GetTagsRequestBuilder
    implements Builder<GetTagsRequest, GetTagsRequestBuilder> {
  _$GetTagsRequest? _$v;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  String? _position;
  String? get position => _$this._position;
  set position(String? position) => _$this._position = position;

  String? _resourceArn;
  String? get resourceArn => _$this._resourceArn;
  set resourceArn(String? resourceArn) => _$this._resourceArn = resourceArn;

  GetTagsRequestBuilder() {
    GetTagsRequest._init(this);
  }

  GetTagsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _limit = $v.limit;
      _position = $v.position;
      _resourceArn = $v.resourceArn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTagsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTagsRequest;
  }

  @override
  void update(void Function(GetTagsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTagsRequest build() => _build();

  _$GetTagsRequest _build() {
    final _$result = _$v ??
        new _$GetTagsRequest._(
            limit: limit,
            position: position,
            resourceArn: BuiltValueNullFieldError.checkNotNull(
                resourceArn, r'GetTagsRequest', 'resourceArn'));
    replace(_$result);
    return _$result;
  }
}

class _$GetTagsRequestPayload extends GetTagsRequestPayload {
  factory _$GetTagsRequestPayload(
          [void Function(GetTagsRequestPayloadBuilder)? updates]) =>
      (new GetTagsRequestPayloadBuilder()..update(updates))._build();

  _$GetTagsRequestPayload._() : super._();

  @override
  GetTagsRequestPayload rebuild(
          void Function(GetTagsRequestPayloadBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTagsRequestPayloadBuilder toBuilder() =>
      new GetTagsRequestPayloadBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTagsRequestPayload;
  }

  @override
  int get hashCode {
    return 1026054959;
  }
}

class GetTagsRequestPayloadBuilder
    implements Builder<GetTagsRequestPayload, GetTagsRequestPayloadBuilder> {
  _$GetTagsRequestPayload? _$v;

  GetTagsRequestPayloadBuilder() {
    GetTagsRequestPayload._init(this);
  }

  @override
  void replace(GetTagsRequestPayload other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTagsRequestPayload;
  }

  @override
  void update(void Function(GetTagsRequestPayloadBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTagsRequestPayload build() => _build();

  _$GetTagsRequestPayload _build() {
    final _$result = _$v ?? new _$GetTagsRequestPayload._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

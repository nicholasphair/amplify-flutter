// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assume_role_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AssumeRoleRequest extends AssumeRoleRequest {
  @override
  final String roleArn;
  @override
  final String roleSessionName;
  @override
  final _i3.BuiltList<PolicyDescriptorType>? policyArns;
  @override
  final String? policy;
  @override
  final int? durationSeconds;
  @override
  final _i3.BuiltList<Tag>? tags;
  @override
  final _i3.BuiltList<String>? transitiveTagKeys;
  @override
  final String? externalId;
  @override
  final String? serialNumber;
  @override
  final String? tokenCode;
  @override
  final String? sourceIdentity;
  @override
  final _i3.BuiltList<ProvidedContext>? providedContexts;

  factory _$AssumeRoleRequest(
          [void Function(AssumeRoleRequestBuilder)? updates]) =>
      (new AssumeRoleRequestBuilder()..update(updates))._build();

  _$AssumeRoleRequest._(
      {required this.roleArn,
      required this.roleSessionName,
      this.policyArns,
      this.policy,
      this.durationSeconds,
      this.tags,
      this.transitiveTagKeys,
      this.externalId,
      this.serialNumber,
      this.tokenCode,
      this.sourceIdentity,
      this.providedContexts})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        roleArn, r'AssumeRoleRequest', 'roleArn');
    BuiltValueNullFieldError.checkNotNull(
        roleSessionName, r'AssumeRoleRequest', 'roleSessionName');
  }

  @override
  AssumeRoleRequest rebuild(void Function(AssumeRoleRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AssumeRoleRequestBuilder toBuilder() =>
      new AssumeRoleRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AssumeRoleRequest &&
        roleArn == other.roleArn &&
        roleSessionName == other.roleSessionName &&
        policyArns == other.policyArns &&
        policy == other.policy &&
        durationSeconds == other.durationSeconds &&
        tags == other.tags &&
        transitiveTagKeys == other.transitiveTagKeys &&
        externalId == other.externalId &&
        serialNumber == other.serialNumber &&
        tokenCode == other.tokenCode &&
        sourceIdentity == other.sourceIdentity &&
        providedContexts == other.providedContexts;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, roleArn.hashCode);
    _$hash = $jc(_$hash, roleSessionName.hashCode);
    _$hash = $jc(_$hash, policyArns.hashCode);
    _$hash = $jc(_$hash, policy.hashCode);
    _$hash = $jc(_$hash, durationSeconds.hashCode);
    _$hash = $jc(_$hash, tags.hashCode);
    _$hash = $jc(_$hash, transitiveTagKeys.hashCode);
    _$hash = $jc(_$hash, externalId.hashCode);
    _$hash = $jc(_$hash, serialNumber.hashCode);
    _$hash = $jc(_$hash, tokenCode.hashCode);
    _$hash = $jc(_$hash, sourceIdentity.hashCode);
    _$hash = $jc(_$hash, providedContexts.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class AssumeRoleRequestBuilder
    implements Builder<AssumeRoleRequest, AssumeRoleRequestBuilder> {
  _$AssumeRoleRequest? _$v;

  String? _roleArn;
  String? get roleArn => _$this._roleArn;
  set roleArn(String? roleArn) => _$this._roleArn = roleArn;

  String? _roleSessionName;
  String? get roleSessionName => _$this._roleSessionName;
  set roleSessionName(String? roleSessionName) =>
      _$this._roleSessionName = roleSessionName;

  _i3.ListBuilder<PolicyDescriptorType>? _policyArns;
  _i3.ListBuilder<PolicyDescriptorType> get policyArns =>
      _$this._policyArns ??= new _i3.ListBuilder<PolicyDescriptorType>();
  set policyArns(_i3.ListBuilder<PolicyDescriptorType>? policyArns) =>
      _$this._policyArns = policyArns;

  String? _policy;
  String? get policy => _$this._policy;
  set policy(String? policy) => _$this._policy = policy;

  int? _durationSeconds;
  int? get durationSeconds => _$this._durationSeconds;
  set durationSeconds(int? durationSeconds) =>
      _$this._durationSeconds = durationSeconds;

  _i3.ListBuilder<Tag>? _tags;
  _i3.ListBuilder<Tag> get tags => _$this._tags ??= new _i3.ListBuilder<Tag>();
  set tags(_i3.ListBuilder<Tag>? tags) => _$this._tags = tags;

  _i3.ListBuilder<String>? _transitiveTagKeys;
  _i3.ListBuilder<String> get transitiveTagKeys =>
      _$this._transitiveTagKeys ??= new _i3.ListBuilder<String>();
  set transitiveTagKeys(_i3.ListBuilder<String>? transitiveTagKeys) =>
      _$this._transitiveTagKeys = transitiveTagKeys;

  String? _externalId;
  String? get externalId => _$this._externalId;
  set externalId(String? externalId) => _$this._externalId = externalId;

  String? _serialNumber;
  String? get serialNumber => _$this._serialNumber;
  set serialNumber(String? serialNumber) => _$this._serialNumber = serialNumber;

  String? _tokenCode;
  String? get tokenCode => _$this._tokenCode;
  set tokenCode(String? tokenCode) => _$this._tokenCode = tokenCode;

  String? _sourceIdentity;
  String? get sourceIdentity => _$this._sourceIdentity;
  set sourceIdentity(String? sourceIdentity) =>
      _$this._sourceIdentity = sourceIdentity;

  _i3.ListBuilder<ProvidedContext>? _providedContexts;
  _i3.ListBuilder<ProvidedContext> get providedContexts =>
      _$this._providedContexts ??= new _i3.ListBuilder<ProvidedContext>();
  set providedContexts(_i3.ListBuilder<ProvidedContext>? providedContexts) =>
      _$this._providedContexts = providedContexts;

  AssumeRoleRequestBuilder();

  AssumeRoleRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _roleArn = $v.roleArn;
      _roleSessionName = $v.roleSessionName;
      _policyArns = $v.policyArns?.toBuilder();
      _policy = $v.policy;
      _durationSeconds = $v.durationSeconds;
      _tags = $v.tags?.toBuilder();
      _transitiveTagKeys = $v.transitiveTagKeys?.toBuilder();
      _externalId = $v.externalId;
      _serialNumber = $v.serialNumber;
      _tokenCode = $v.tokenCode;
      _sourceIdentity = $v.sourceIdentity;
      _providedContexts = $v.providedContexts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AssumeRoleRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AssumeRoleRequest;
  }

  @override
  void update(void Function(AssumeRoleRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AssumeRoleRequest build() => _build();

  _$AssumeRoleRequest _build() {
    _$AssumeRoleRequest _$result;
    try {
      _$result = _$v ??
          new _$AssumeRoleRequest._(
              roleArn: BuiltValueNullFieldError.checkNotNull(
                  roleArn, r'AssumeRoleRequest', 'roleArn'),
              roleSessionName: BuiltValueNullFieldError.checkNotNull(
                  roleSessionName, r'AssumeRoleRequest', 'roleSessionName'),
              policyArns: _policyArns?.build(),
              policy: policy,
              durationSeconds: durationSeconds,
              tags: _tags?.build(),
              transitiveTagKeys: _transitiveTagKeys?.build(),
              externalId: externalId,
              serialNumber: serialNumber,
              tokenCode: tokenCode,
              sourceIdentity: sourceIdentity,
              providedContexts: _providedContexts?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'policyArns';
        _policyArns?.build();

        _$failedField = 'tags';
        _tags?.build();
        _$failedField = 'transitiveTagKeys';
        _transitiveTagKeys?.build();

        _$failedField = 'providedContexts';
        _providedContexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AssumeRoleRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

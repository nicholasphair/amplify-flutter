// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.get_organization_conformance_pack_detailed_status_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetOrganizationConformancePackDetailedStatusResponse
    extends GetOrganizationConformancePackDetailedStatusResponse {
  @override
  final String? nextToken;
  @override
  final _i3.BuiltList<_i2.OrganizationConformancePackDetailedStatus>?
      organizationConformancePackDetailedStatuses;

  factory _$GetOrganizationConformancePackDetailedStatusResponse(
          [void Function(
                  GetOrganizationConformancePackDetailedStatusResponseBuilder)?
              updates]) =>
      (new GetOrganizationConformancePackDetailedStatusResponseBuilder()
            ..update(updates))
          ._build();

  _$GetOrganizationConformancePackDetailedStatusResponse._(
      {this.nextToken, this.organizationConformancePackDetailedStatuses})
      : super._();

  @override
  GetOrganizationConformancePackDetailedStatusResponse rebuild(
          void Function(
                  GetOrganizationConformancePackDetailedStatusResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetOrganizationConformancePackDetailedStatusResponseBuilder toBuilder() =>
      new GetOrganizationConformancePackDetailedStatusResponseBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetOrganizationConformancePackDetailedStatusResponse &&
        nextToken == other.nextToken &&
        organizationConformancePackDetailedStatuses ==
            other.organizationConformancePackDetailedStatuses;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, nextToken.hashCode),
        organizationConformancePackDetailedStatuses.hashCode));
  }
}

class GetOrganizationConformancePackDetailedStatusResponseBuilder
    implements
        Builder<GetOrganizationConformancePackDetailedStatusResponse,
            GetOrganizationConformancePackDetailedStatusResponseBuilder> {
  _$GetOrganizationConformancePackDetailedStatusResponse? _$v;

  String? _nextToken;
  String? get nextToken => _$this._nextToken;
  set nextToken(String? nextToken) => _$this._nextToken = nextToken;

  _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>?
      _organizationConformancePackDetailedStatuses;
  _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>
      get organizationConformancePackDetailedStatuses => _$this
              ._organizationConformancePackDetailedStatuses ??=
          new _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>();
  set organizationConformancePackDetailedStatuses(
          _i3.ListBuilder<_i2.OrganizationConformancePackDetailedStatus>?
              organizationConformancePackDetailedStatuses) =>
      _$this._organizationConformancePackDetailedStatuses =
          organizationConformancePackDetailedStatuses;

  GetOrganizationConformancePackDetailedStatusResponseBuilder() {
    GetOrganizationConformancePackDetailedStatusResponse._init(this);
  }

  GetOrganizationConformancePackDetailedStatusResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nextToken = $v.nextToken;
      _organizationConformancePackDetailedStatuses =
          $v.organizationConformancePackDetailedStatuses?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetOrganizationConformancePackDetailedStatusResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetOrganizationConformancePackDetailedStatusResponse;
  }

  @override
  void update(
      void Function(
              GetOrganizationConformancePackDetailedStatusResponseBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  GetOrganizationConformancePackDetailedStatusResponse build() => _build();

  _$GetOrganizationConformancePackDetailedStatusResponse _build() {
    _$GetOrganizationConformancePackDetailedStatusResponse _$result;
    try {
      _$result = _$v ??
          new _$GetOrganizationConformancePackDetailedStatusResponse._(
              nextToken: nextToken,
              organizationConformancePackDetailedStatuses:
                  _organizationConformancePackDetailedStatuses?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'organizationConformancePackDetailedStatuses';
        _organizationConformancePackDetailedStatuses?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetOrganizationConformancePackDetailedStatusResponse',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas

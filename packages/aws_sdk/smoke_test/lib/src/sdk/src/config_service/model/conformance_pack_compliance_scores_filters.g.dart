// GENERATED CODE - DO NOT MODIFY BY HAND

part of smoke_test.config_service.model.conformance_pack_compliance_scores_filters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ConformancePackComplianceScoresFilters
    extends ConformancePackComplianceScoresFilters {
  @override
  final _i2.BuiltList<String> conformancePackNames;

  factory _$ConformancePackComplianceScoresFilters(
          [void Function(ConformancePackComplianceScoresFiltersBuilder)?
              updates]) =>
      (new ConformancePackComplianceScoresFiltersBuilder()..update(updates))
          ._build();

  _$ConformancePackComplianceScoresFilters._(
      {required this.conformancePackNames})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(conformancePackNames,
        r'ConformancePackComplianceScoresFilters', 'conformancePackNames');
  }

  @override
  ConformancePackComplianceScoresFilters rebuild(
          void Function(ConformancePackComplianceScoresFiltersBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConformancePackComplianceScoresFiltersBuilder toBuilder() =>
      new ConformancePackComplianceScoresFiltersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConformancePackComplianceScoresFilters &&
        conformancePackNames == other.conformancePackNames;
  }

  @override
  int get hashCode {
    return $jf($jc(0, conformancePackNames.hashCode));
  }
}

class ConformancePackComplianceScoresFiltersBuilder
    implements
        Builder<ConformancePackComplianceScoresFilters,
            ConformancePackComplianceScoresFiltersBuilder> {
  _$ConformancePackComplianceScoresFilters? _$v;

  _i2.ListBuilder<String>? _conformancePackNames;
  _i2.ListBuilder<String> get conformancePackNames =>
      _$this._conformancePackNames ??= new _i2.ListBuilder<String>();
  set conformancePackNames(_i2.ListBuilder<String>? conformancePackNames) =>
      _$this._conformancePackNames = conformancePackNames;

  ConformancePackComplianceScoresFiltersBuilder() {
    ConformancePackComplianceScoresFilters._init(this);
  }

  ConformancePackComplianceScoresFiltersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conformancePackNames = $v.conformancePackNames.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConformancePackComplianceScoresFilters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ConformancePackComplianceScoresFilters;
  }

  @override
  void update(
      void Function(ConformancePackComplianceScoresFiltersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConformancePackComplianceScoresFilters build() => _build();

  _$ConformancePackComplianceScoresFilters _build() {
    _$ConformancePackComplianceScoresFilters _$result;
    try {
      _$result = _$v ??
          new _$ConformancePackComplianceScoresFilters._(
              conformancePackNames: conformancePackNames.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conformancePackNames';
        conformancePackNames.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ConformancePackComplianceScoresFilters',
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

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_transit_gateway_vpc_attachment_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTransitGatewayVpcAttachmentResult
    extends CreateTransitGatewayVpcAttachmentResult {
  @override
  final TransitGatewayVpcAttachment? transitGatewayVpcAttachment;

  factory _$CreateTransitGatewayVpcAttachmentResult(
          [void Function(CreateTransitGatewayVpcAttachmentResultBuilder)?
              updates]) =>
      (new CreateTransitGatewayVpcAttachmentResultBuilder()..update(updates))
          ._build();

  _$CreateTransitGatewayVpcAttachmentResult._(
      {this.transitGatewayVpcAttachment})
      : super._();

  @override
  CreateTransitGatewayVpcAttachmentResult rebuild(
          void Function(CreateTransitGatewayVpcAttachmentResultBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTransitGatewayVpcAttachmentResultBuilder toBuilder() =>
      new CreateTransitGatewayVpcAttachmentResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTransitGatewayVpcAttachmentResult &&
        transitGatewayVpcAttachment == other.transitGatewayVpcAttachment;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, transitGatewayVpcAttachment.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }
}

class CreateTransitGatewayVpcAttachmentResultBuilder
    implements
        Builder<CreateTransitGatewayVpcAttachmentResult,
            CreateTransitGatewayVpcAttachmentResultBuilder> {
  _$CreateTransitGatewayVpcAttachmentResult? _$v;

  TransitGatewayVpcAttachmentBuilder? _transitGatewayVpcAttachment;
  TransitGatewayVpcAttachmentBuilder get transitGatewayVpcAttachment =>
      _$this._transitGatewayVpcAttachment ??=
          new TransitGatewayVpcAttachmentBuilder();
  set transitGatewayVpcAttachment(
          TransitGatewayVpcAttachmentBuilder? transitGatewayVpcAttachment) =>
      _$this._transitGatewayVpcAttachment = transitGatewayVpcAttachment;

  CreateTransitGatewayVpcAttachmentResultBuilder();

  CreateTransitGatewayVpcAttachmentResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _transitGatewayVpcAttachment =
          $v.transitGatewayVpcAttachment?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTransitGatewayVpcAttachmentResult other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateTransitGatewayVpcAttachmentResult;
  }

  @override
  void update(
      void Function(CreateTransitGatewayVpcAttachmentResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTransitGatewayVpcAttachmentResult build() => _build();

  _$CreateTransitGatewayVpcAttachmentResult _build() {
    _$CreateTransitGatewayVpcAttachmentResult _$result;
    try {
      _$result = _$v ??
          new _$CreateTransitGatewayVpcAttachmentResult._(
              transitGatewayVpcAttachment:
                  _transitGatewayVpcAttachment?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'transitGatewayVpcAttachment';
        _transitGatewayVpcAttachment?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreateTransitGatewayVpcAttachmentResult',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_transit_gateway_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway.dart';

part 'modify_transit_gateway_result.g.dart';

abstract class ModifyTransitGatewayResult
    with _i1.AWSEquatable<ModifyTransitGatewayResult>
    implements
        Built<ModifyTransitGatewayResult, ModifyTransitGatewayResultBuilder> {
  factory ModifyTransitGatewayResult({TransitGateway? transitGateway}) {
    return _$ModifyTransitGatewayResult._(transitGateway: transitGateway);
  }

  factory ModifyTransitGatewayResult.build(
          [void Function(ModifyTransitGatewayResultBuilder) updates]) =
      _$ModifyTransitGatewayResult;

  const ModifyTransitGatewayResult._();

  /// Constructs a [ModifyTransitGatewayResult] from a [payload] and [response].
  factory ModifyTransitGatewayResult.fromResponse(
    ModifyTransitGatewayResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<ModifyTransitGatewayResult>>
      serializers = [ModifyTransitGatewayResultEc2QuerySerializer()];

  /// Information about the transit gateway.
  TransitGateway? get transitGateway;
  @override
  List<Object?> get props => [transitGateway];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('ModifyTransitGatewayResult')
      ..add(
        'transitGateway',
        transitGateway,
      );
    return helper.toString();
  }
}

class ModifyTransitGatewayResultEc2QuerySerializer
    extends _i2.StructuredSmithySerializer<ModifyTransitGatewayResult> {
  const ModifyTransitGatewayResultEc2QuerySerializer()
      : super('ModifyTransitGatewayResult');

  @override
  Iterable<Type> get types => const [
        ModifyTransitGatewayResult,
        _$ModifyTransitGatewayResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyTransitGatewayResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ModifyTransitGatewayResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGateway':
          result.transitGateway.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGateway),
          ) as TransitGateway));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyTransitGatewayResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'ModifyTransitGatewayResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyTransitGatewayResult(:transitGateway) = object;
    if (transitGateway != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGateway'))
        ..add(serializers.serialize(
          transitGateway,
          specifiedType: const FullType(TransitGateway),
        ));
    }
    return result$;
  }
}

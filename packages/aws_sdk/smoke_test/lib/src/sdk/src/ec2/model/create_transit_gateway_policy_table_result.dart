// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.create_transit_gateway_policy_table_result; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/ec2/model/transit_gateway_policy_table.dart';

part 'create_transit_gateway_policy_table_result.g.dart';

abstract class CreateTransitGatewayPolicyTableResult
    with
        _i1.AWSEquatable<CreateTransitGatewayPolicyTableResult>
    implements
        Built<CreateTransitGatewayPolicyTableResult,
            CreateTransitGatewayPolicyTableResultBuilder> {
  factory CreateTransitGatewayPolicyTableResult(
      {TransitGatewayPolicyTable? transitGatewayPolicyTable}) {
    return _$CreateTransitGatewayPolicyTableResult._(
        transitGatewayPolicyTable: transitGatewayPolicyTable);
  }

  factory CreateTransitGatewayPolicyTableResult.build(
      [void Function(CreateTransitGatewayPolicyTableResultBuilder)
          updates]) = _$CreateTransitGatewayPolicyTableResult;

  const CreateTransitGatewayPolicyTableResult._();

  /// Constructs a [CreateTransitGatewayPolicyTableResult] from a [payload] and [response].
  factory CreateTransitGatewayPolicyTableResult.fromResponse(
    CreateTransitGatewayPolicyTableResult payload,
    _i1.AWSBaseHttpResponse response,
  ) =>
      payload;

  static const List<_i2.SmithySerializer<CreateTransitGatewayPolicyTableResult>>
      serializers = [CreateTransitGatewayPolicyTableResultEc2QuerySerializer()];

  /// Describes the created transit gateway policy table.
  TransitGatewayPolicyTable? get transitGatewayPolicyTable;
  @override
  List<Object?> get props => [transitGatewayPolicyTable];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('CreateTransitGatewayPolicyTableResult')
          ..add(
            'transitGatewayPolicyTable',
            transitGatewayPolicyTable,
          );
    return helper.toString();
  }
}

class CreateTransitGatewayPolicyTableResultEc2QuerySerializer extends _i2
    .StructuredSmithySerializer<CreateTransitGatewayPolicyTableResult> {
  const CreateTransitGatewayPolicyTableResultEc2QuerySerializer()
      : super('CreateTransitGatewayPolicyTableResult');

  @override
  Iterable<Type> get types => const [
        CreateTransitGatewayPolicyTableResult,
        _$CreateTransitGatewayPolicyTableResult,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  CreateTransitGatewayPolicyTableResult deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTransitGatewayPolicyTableResultBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'transitGatewayPolicyTable':
          result.transitGatewayPolicyTable.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(TransitGatewayPolicyTable),
          ) as TransitGatewayPolicyTable));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    CreateTransitGatewayPolicyTableResult object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'CreateTransitGatewayPolicyTableResultResponse',
        _i2.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final CreateTransitGatewayPolicyTableResult(:transitGatewayPolicyTable) =
        object;
    if (transitGatewayPolicyTable != null) {
      result$
        ..add(const _i2.XmlElementName('TransitGatewayPolicyTable'))
        ..add(serializers.serialize(
          transitGatewayPolicyTable,
          specifiedType: const FullType(TransitGatewayPolicyTable),
        ));
    }
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.statement; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i2;
import 'package:smoke_test/src/sdk/src/iam/model/policy_source_type.dart';
import 'package:smoke_test/src/sdk/src/iam/model/position.dart';

part 'statement.g.dart';

/// Contains a reference to a `Statement` element in a policy document that determines the result of the simulation.
///
/// This data type is used by the `MatchedStatements` member of the `EvaluationResult` type.
abstract class Statement
    with _i1.AWSEquatable<Statement>
    implements Built<Statement, StatementBuilder> {
  /// Contains a reference to a `Statement` element in a policy document that determines the result of the simulation.
  ///
  /// This data type is used by the `MatchedStatements` member of the `EvaluationResult` type.
  factory Statement({
    String? sourcePolicyId,
    PolicySourceType? sourcePolicyType,
    Position? startPosition,
    Position? endPosition,
  }) {
    return _$Statement._(
      sourcePolicyId: sourcePolicyId,
      sourcePolicyType: sourcePolicyType,
      startPosition: startPosition,
      endPosition: endPosition,
    );
  }

  /// Contains a reference to a `Statement` element in a policy document that determines the result of the simulation.
  ///
  /// This data type is used by the `MatchedStatements` member of the `EvaluationResult` type.
  factory Statement.build([void Function(StatementBuilder) updates]) =
      _$Statement;

  const Statement._();

  static const List<_i2.SmithySerializer<Statement>> serializers = [
    StatementAwsQuerySerializer()
  ];

  /// The identifier of the policy that was provided as an input.
  String? get sourcePolicyId;

  /// The type of the policy.
  PolicySourceType? get sourcePolicyType;

  /// The row and column of the beginning of the `Statement` in an IAM policy.
  Position? get startPosition;

  /// The row and column of the end of a `Statement` in an IAM policy.
  Position? get endPosition;
  @override
  List<Object?> get props => [
        sourcePolicyId,
        sourcePolicyType,
        startPosition,
        endPosition,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Statement')
      ..add(
        'sourcePolicyId',
        sourcePolicyId,
      )
      ..add(
        'sourcePolicyType',
        sourcePolicyType,
      )
      ..add(
        'startPosition',
        startPosition,
      )
      ..add(
        'endPosition',
        endPosition,
      );
    return helper.toString();
  }
}

class StatementAwsQuerySerializer
    extends _i2.StructuredSmithySerializer<Statement> {
  const StatementAwsQuerySerializer() : super('Statement');

  @override
  Iterable<Type> get types => const [
        Statement,
        _$Statement,
      ];
  @override
  Iterable<_i2.ShapeId> get supportedProtocols => const [
        _i2.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Statement deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StatementBuilder();
    final responseIterator = serialized.iterator;
    while (responseIterator.moveNext()) {
      final key = responseIterator.current as String;
      responseIterator.moveNext();
      if (key.endsWith('Result')) {
        serialized = responseIterator.current as Iterable;
      }
    }
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'SourcePolicyId':
          result.sourcePolicyId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'SourcePolicyType':
          result.sourcePolicyType = (serializers.deserialize(
            value,
            specifiedType: const FullType(PolicySourceType),
          ) as PolicySourceType);
        case 'StartPosition':
          result.startPosition.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Position),
          ) as Position));
        case 'EndPosition':
          result.endPosition.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(Position),
          ) as Position));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Statement object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i2.XmlElementName(
        'StatementResponse',
        _i2.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final Statement(
      :sourcePolicyId,
      :sourcePolicyType,
      :startPosition,
      :endPosition
    ) = object;
    if (sourcePolicyId != null) {
      result$
        ..add(const _i2.XmlElementName('SourcePolicyId'))
        ..add(serializers.serialize(
          sourcePolicyId,
          specifiedType: const FullType(String),
        ));
    }
    if (sourcePolicyType != null) {
      result$
        ..add(const _i2.XmlElementName('SourcePolicyType'))
        ..add(serializers.serialize(
          sourcePolicyType,
          specifiedType: const FullType.nullable(PolicySourceType),
        ));
    }
    if (startPosition != null) {
      result$
        ..add(const _i2.XmlElementName('StartPosition'))
        ..add(serializers.serialize(
          startPosition,
          specifiedType: const FullType(Position),
        ));
    }
    if (endPosition != null) {
      result$
        ..add(const _i2.XmlElementName('EndPosition'))
        ..add(serializers.serialize(
          endPosition,
          specifiedType: const FullType(Position),
        ));
    }
    return result$;
  }
}

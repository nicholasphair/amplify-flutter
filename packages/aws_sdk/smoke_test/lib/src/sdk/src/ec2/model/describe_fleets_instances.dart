// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.describe_fleets_instances; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/ec2/model/instance_lifecycle.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/instance_type.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/launch_template_and_overrides_response.dart';
import 'package:smoke_test/src/sdk/src/ec2/model/platform_values.dart';

part 'describe_fleets_instances.g.dart';

/// Describes the instances that were launched by the fleet.
abstract class DescribeFleetsInstances
    with _i1.AWSEquatable<DescribeFleetsInstances>
    implements Built<DescribeFleetsInstances, DescribeFleetsInstancesBuilder> {
  /// Describes the instances that were launched by the fleet.
  factory DescribeFleetsInstances({
    LaunchTemplateAndOverridesResponse? launchTemplateAndOverrides,
    InstanceLifecycle? lifecycle,
    List<String>? instanceIds,
    InstanceType? instanceType,
    PlatformValues? platform,
  }) {
    return _$DescribeFleetsInstances._(
      launchTemplateAndOverrides: launchTemplateAndOverrides,
      lifecycle: lifecycle,
      instanceIds: instanceIds == null ? null : _i2.BuiltList(instanceIds),
      instanceType: instanceType,
      platform: platform,
    );
  }

  /// Describes the instances that were launched by the fleet.
  factory DescribeFleetsInstances.build(
          [void Function(DescribeFleetsInstancesBuilder) updates]) =
      _$DescribeFleetsInstances;

  const DescribeFleetsInstances._();

  static const List<_i3.SmithySerializer<DescribeFleetsInstances>> serializers =
      [DescribeFleetsInstancesEc2QuerySerializer()];

  /// The launch templates and overrides that were used for launching the instances. The values that you specify in the Overrides replace the values in the launch template.
  LaunchTemplateAndOverridesResponse? get launchTemplateAndOverrides;

  /// Indicates if the instance that was launched is a Spot Instance or On-Demand Instance.
  InstanceLifecycle? get lifecycle;

  /// The IDs of the instances.
  _i2.BuiltList<String>? get instanceIds;

  /// The instance type.
  InstanceType? get instanceType;

  /// The value is `Windows` for Windows instances. Otherwise, the value is blank.
  PlatformValues? get platform;
  @override
  List<Object?> get props => [
        launchTemplateAndOverrides,
        lifecycle,
        instanceIds,
        instanceType,
        platform,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('DescribeFleetsInstances')
      ..add(
        'launchTemplateAndOverrides',
        launchTemplateAndOverrides,
      )
      ..add(
        'lifecycle',
        lifecycle,
      )
      ..add(
        'instanceIds',
        instanceIds,
      )
      ..add(
        'instanceType',
        instanceType,
      )
      ..add(
        'platform',
        platform,
      );
    return helper.toString();
  }
}

class DescribeFleetsInstancesEc2QuerySerializer
    extends _i3.StructuredSmithySerializer<DescribeFleetsInstances> {
  const DescribeFleetsInstancesEc2QuerySerializer()
      : super('DescribeFleetsInstances');

  @override
  Iterable<Type> get types => const [
        DescribeFleetsInstances,
        _$DescribeFleetsInstances,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  DescribeFleetsInstances deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DescribeFleetsInstancesBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'launchTemplateAndOverrides':
          result.launchTemplateAndOverrides.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(LaunchTemplateAndOverridesResponse),
          ) as LaunchTemplateAndOverridesResponse));
        case 'lifecycle':
          result.lifecycle = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceLifecycle),
          ) as InstanceLifecycle);
        case 'instanceIds':
          result.instanceIds.replace((const _i3.XmlBuiltListSerializer(
            memberName: 'item',
            indexer: _i3.XmlIndexer.ec2QueryList,
          ).deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'instanceType':
          result.instanceType = (serializers.deserialize(
            value,
            specifiedType: const FullType(InstanceType),
          ) as InstanceType);
        case 'platform':
          result.platform = (serializers.deserialize(
            value,
            specifiedType: const FullType(PlatformValues),
          ) as PlatformValues);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    DescribeFleetsInstances object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'DescribeFleetsInstancesResponse',
        _i3.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final DescribeFleetsInstances(
      :launchTemplateAndOverrides,
      :lifecycle,
      :instanceIds,
      :instanceType,
      :platform
    ) = object;
    if (launchTemplateAndOverrides != null) {
      result$
        ..add(const _i3.XmlElementName('LaunchTemplateAndOverrides'))
        ..add(serializers.serialize(
          launchTemplateAndOverrides,
          specifiedType: const FullType(LaunchTemplateAndOverridesResponse),
        ));
    }
    if (lifecycle != null) {
      result$
        ..add(const _i3.XmlElementName('Lifecycle'))
        ..add(serializers.serialize(
          lifecycle,
          specifiedType: const FullType.nullable(InstanceLifecycle),
        ));
    }
    if (instanceIds != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceIds'))
        ..add(const _i3.XmlBuiltListSerializer(
          memberName: 'item',
          indexer: _i3.XmlIndexer.ec2QueryList,
        ).serialize(
          serializers,
          instanceIds,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (instanceType != null) {
      result$
        ..add(const _i3.XmlElementName('InstanceType'))
        ..add(serializers.serialize(
          instanceType,
          specifiedType: const FullType.nullable(InstanceType),
        ));
    }
    if (platform != null) {
      result$
        ..add(const _i3.XmlElementName('Platform'))
        ..add(serializers.serialize(
          platform,
          specifiedType: const FullType.nullable(PlatformValues),
        ));
    }
    return result$;
  }
}

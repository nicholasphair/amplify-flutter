// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.cloud_formation.model.stack; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/cloud_formation/model/capability.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/output.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/parameter.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/rollback_configuration.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_drift_information.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/stack_status.dart';
import 'package:smoke_test/src/sdk/src/cloud_formation/model/tag.dart';

part 'stack.g.dart';

/// The Stack data type.
abstract class Stack
    with _i1.AWSEquatable<Stack>
    implements Built<Stack, StackBuilder> {
  /// The Stack data type.
  factory Stack({
    String? stackId,
    required String stackName,
    String? changeSetId,
    String? description,
    List<Parameter>? parameters,
    required DateTime creationTime,
    DateTime? deletionTime,
    DateTime? lastUpdatedTime,
    RollbackConfiguration? rollbackConfiguration,
    required StackStatus stackStatus,
    String? stackStatusReason,
    bool? disableRollback,
    List<String>? notificationArNs,
    int? timeoutInMinutes,
    List<Capability>? capabilities,
    List<Output>? outputs,
    String? roleArn,
    List<Tag>? tags,
    bool? enableTerminationProtection,
    String? parentId,
    String? rootId,
    StackDriftInformation? driftInformation,
    bool? retainExceptOnCreate,
  }) {
    return _$Stack._(
      stackId: stackId,
      stackName: stackName,
      changeSetId: changeSetId,
      description: description,
      parameters: parameters == null ? null : _i2.BuiltList(parameters),
      creationTime: creationTime,
      deletionTime: deletionTime,
      lastUpdatedTime: lastUpdatedTime,
      rollbackConfiguration: rollbackConfiguration,
      stackStatus: stackStatus,
      stackStatusReason: stackStatusReason,
      disableRollback: disableRollback,
      notificationArNs:
          notificationArNs == null ? null : _i2.BuiltList(notificationArNs),
      timeoutInMinutes: timeoutInMinutes,
      capabilities: capabilities == null ? null : _i2.BuiltList(capabilities),
      outputs: outputs == null ? null : _i2.BuiltList(outputs),
      roleArn: roleArn,
      tags: tags == null ? null : _i2.BuiltList(tags),
      enableTerminationProtection: enableTerminationProtection,
      parentId: parentId,
      rootId: rootId,
      driftInformation: driftInformation,
      retainExceptOnCreate: retainExceptOnCreate,
    );
  }

  /// The Stack data type.
  factory Stack.build([void Function(StackBuilder) updates]) = _$Stack;

  const Stack._();

  static const List<_i3.SmithySerializer<Stack>> serializers = [
    StackAwsQuerySerializer()
  ];

  /// Unique identifier of the stack.
  String? get stackId;

  /// The name associated with the stack.
  String get stackName;

  /// The unique ID of the change set.
  String? get changeSetId;

  /// A user-defined description associated with the stack.
  String? get description;

  /// A list of `Parameter` structures.
  _i2.BuiltList<Parameter>? get parameters;

  /// The time at which the stack was created.
  DateTime get creationTime;

  /// The time the stack was deleted.
  DateTime? get deletionTime;

  /// The time the stack was last updated. This field will only be returned if the stack has been updated at least once.
  DateTime? get lastUpdatedTime;

  /// The rollback triggers for CloudFormation to monitor during stack creation and updating operations, and for the specified monitoring period afterwards.
  RollbackConfiguration? get rollbackConfiguration;

  /// Current status of the stack.
  StackStatus get stackStatus;

  /// Success/failure message associated with the stack status.
  String? get stackStatusReason;

  /// Boolean to enable or disable rollback on stack creation failures:
  ///
  /// *   `true`: disable rollback.
  ///
  /// *   `false`: enable rollback.
  bool? get disableRollback;

  /// Amazon SNS topic Amazon Resource Names (ARNs) to which stack related events are published.
  _i2.BuiltList<String>? get notificationArNs;

  /// The amount of time within which stack creation should complete.
  int? get timeoutInMinutes;

  /// The capabilities allowed in the stack.
  _i2.BuiltList<Capability>? get capabilities;

  /// A list of output structures.
  _i2.BuiltList<Output>? get outputs;

  /// The Amazon Resource Name (ARN) of an Identity and Access Management (IAM) role that's associated with the stack. During a stack operation, CloudFormation uses this role's credentials to make calls on your behalf.
  String? get roleArn;

  /// A list of `Tag`s that specify information about the stack.
  _i2.BuiltList<Tag>? get tags;

  /// Whether termination protection is enabled for the stack.
  ///
  /// For [nested stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html), termination protection is set on the root stack and can't be changed directly on the nested stack. For more information, see [Protecting a Stack From Being Deleted](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-protect-stacks.html) in the _CloudFormation User Guide_.
  bool? get enableTerminationProtection;

  /// For nested stacks--stacks created as resources for another stack--the stack ID of the direct parent of this stack. For the first level of nested stacks, the root stack is also the parent stack.
  ///
  /// For more information, see [Working with Nested Stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html) in the _CloudFormation User Guide_.
  String? get parentId;

  /// For nested stacks--stacks created as resources for another stack--the stack ID of the top-level stack to which the nested stack ultimately belongs.
  ///
  /// For more information, see [Working with Nested Stacks](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-nested-stacks.html) in the _CloudFormation User Guide_.
  String? get rootId;

  /// Information about whether a stack's actual configuration differs, or has _drifted_, from its expected configuration, as defined in the stack template and any values specified as template parameters. For more information, see [Detecting Unregulated Configuration Changes to Stacks and Resources](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-cfn-stack-drift.html).
  StackDriftInformation? get driftInformation;

  /// This deletion policy deletes newly created resources, but retains existing resources, when a stack operation is rolled back. This ensures new, empty, and unused resources are deleted, while critical resources and their data are retained. `RetainExceptOnCreate` can be specified for any resource that supports the [DeletionPolicy](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-attribute-deletionpolicy.html) attribute.
  bool? get retainExceptOnCreate;
  @override
  List<Object?> get props => [
        stackId,
        stackName,
        changeSetId,
        description,
        parameters,
        creationTime,
        deletionTime,
        lastUpdatedTime,
        rollbackConfiguration,
        stackStatus,
        stackStatusReason,
        disableRollback,
        notificationArNs,
        timeoutInMinutes,
        capabilities,
        outputs,
        roleArn,
        tags,
        enableTerminationProtection,
        parentId,
        rootId,
        driftInformation,
        retainExceptOnCreate,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper('Stack')
      ..add(
        'stackId',
        stackId,
      )
      ..add(
        'stackName',
        stackName,
      )
      ..add(
        'changeSetId',
        changeSetId,
      )
      ..add(
        'description',
        description,
      )
      ..add(
        'parameters',
        parameters,
      )
      ..add(
        'creationTime',
        creationTime,
      )
      ..add(
        'deletionTime',
        deletionTime,
      )
      ..add(
        'lastUpdatedTime',
        lastUpdatedTime,
      )
      ..add(
        'rollbackConfiguration',
        rollbackConfiguration,
      )
      ..add(
        'stackStatus',
        stackStatus,
      )
      ..add(
        'stackStatusReason',
        stackStatusReason,
      )
      ..add(
        'disableRollback',
        disableRollback,
      )
      ..add(
        'notificationArNs',
        notificationArNs,
      )
      ..add(
        'timeoutInMinutes',
        timeoutInMinutes,
      )
      ..add(
        'capabilities',
        capabilities,
      )
      ..add(
        'outputs',
        outputs,
      )
      ..add(
        'roleArn',
        roleArn,
      )
      ..add(
        'tags',
        tags,
      )
      ..add(
        'enableTerminationProtection',
        enableTerminationProtection,
      )
      ..add(
        'parentId',
        parentId,
      )
      ..add(
        'rootId',
        rootId,
      )
      ..add(
        'driftInformation',
        driftInformation,
      )
      ..add(
        'retainExceptOnCreate',
        retainExceptOnCreate,
      );
    return helper.toString();
  }
}

class StackAwsQuerySerializer extends _i3.StructuredSmithySerializer<Stack> {
  const StackAwsQuerySerializer() : super('Stack');

  @override
  Iterable<Type> get types => const [
        Stack,
        _$Stack,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  Stack deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StackBuilder();
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
        case 'StackId':
          result.stackId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'StackName':
          result.stackName = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'ChangeSetId':
          result.changeSetId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Description':
          result.description = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Parameters':
          result.parameters.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Parameter)],
            ),
          ) as _i2.BuiltList<Parameter>));
        case 'CreationTime':
          result.creationTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'DeletionTime':
          result.deletionTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'LastUpdatedTime':
          result.lastUpdatedTime = (serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime);
        case 'RollbackConfiguration':
          result.rollbackConfiguration.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(RollbackConfiguration),
          ) as RollbackConfiguration));
        case 'StackStatus':
          result.stackStatus = (serializers.deserialize(
            value,
            specifiedType: const FullType(StackStatus),
          ) as StackStatus);
        case 'StackStatusReason':
          result.stackStatusReason = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DisableRollback':
          result.disableRollback = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'NotificationARNs':
          result.notificationArNs.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(String)],
            ),
          ) as _i2.BuiltList<String>));
        case 'TimeoutInMinutes':
          result.timeoutInMinutes = (serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int);
        case 'Capabilities':
          result.capabilities.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Capability)],
            ),
          ) as _i2.BuiltList<Capability>));
        case 'Outputs':
          result.outputs.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Output)],
            ),
          ) as _i2.BuiltList<Output>));
        case 'RoleARN':
          result.roleArn = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Tags':
          result.tags.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(Tag)],
            ),
          ) as _i2.BuiltList<Tag>));
        case 'EnableTerminationProtection':
          result.enableTerminationProtection = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ParentId':
          result.parentId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'RootId':
          result.rootId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'DriftInformation':
          result.driftInformation.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(StackDriftInformation),
          ) as StackDriftInformation));
        case 'RetainExceptOnCreate':
          result.retainExceptOnCreate = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    Stack object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'StackResponse',
        _i3.XmlNamespace('http://cloudformation.amazonaws.com/doc/2010-05-15/'),
      )
    ];
    final Stack(
      :stackId,
      :stackName,
      :changeSetId,
      :description,
      :parameters,
      :creationTime,
      :deletionTime,
      :lastUpdatedTime,
      :rollbackConfiguration,
      :stackStatus,
      :stackStatusReason,
      :disableRollback,
      :notificationArNs,
      :timeoutInMinutes,
      :capabilities,
      :outputs,
      :roleArn,
      :tags,
      :enableTerminationProtection,
      :parentId,
      :rootId,
      :driftInformation,
      :retainExceptOnCreate
    ) = object;
    if (stackId != null) {
      result$
        ..add(const _i3.XmlElementName('StackId'))
        ..add(serializers.serialize(
          stackId,
          specifiedType: const FullType(String),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('StackName'))
      ..add(serializers.serialize(
        stackName,
        specifiedType: const FullType(String),
      ));
    if (changeSetId != null) {
      result$
        ..add(const _i3.XmlElementName('ChangeSetId'))
        ..add(serializers.serialize(
          changeSetId,
          specifiedType: const FullType(String),
        ));
    }
    if (description != null) {
      result$
        ..add(const _i3.XmlElementName('Description'))
        ..add(serializers.serialize(
          description,
          specifiedType: const FullType(String),
        ));
    }
    if (parameters != null) {
      result$
        ..add(const _i3.XmlElementName('Parameters'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          parameters,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Parameter)],
          ),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('CreationTime'))
      ..add(serializers.serialize(
        creationTime,
        specifiedType: const FullType.nullable(DateTime),
      ));
    if (deletionTime != null) {
      result$
        ..add(const _i3.XmlElementName('DeletionTime'))
        ..add(serializers.serialize(
          deletionTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (lastUpdatedTime != null) {
      result$
        ..add(const _i3.XmlElementName('LastUpdatedTime'))
        ..add(serializers.serialize(
          lastUpdatedTime,
          specifiedType: const FullType.nullable(DateTime),
        ));
    }
    if (rollbackConfiguration != null) {
      result$
        ..add(const _i3.XmlElementName('RollbackConfiguration'))
        ..add(serializers.serialize(
          rollbackConfiguration,
          specifiedType: const FullType(RollbackConfiguration),
        ));
    }
    result$
      ..add(const _i3.XmlElementName('StackStatus'))
      ..add(serializers.serialize(
        stackStatus,
        specifiedType: const FullType.nullable(StackStatus),
      ));
    if (stackStatusReason != null) {
      result$
        ..add(const _i3.XmlElementName('StackStatusReason'))
        ..add(serializers.serialize(
          stackStatusReason,
          specifiedType: const FullType(String),
        ));
    }
    if (disableRollback != null) {
      result$
        ..add(const _i3.XmlElementName('DisableRollback'))
        ..add(serializers.serialize(
          disableRollback,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (notificationArNs != null) {
      result$
        ..add(const _i3.XmlElementName('NotificationARNs'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          notificationArNs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(String)],
          ),
        ));
    }
    if (timeoutInMinutes != null) {
      result$
        ..add(const _i3.XmlElementName('TimeoutInMinutes'))
        ..add(serializers.serialize(
          timeoutInMinutes,
          specifiedType: const FullType.nullable(int),
        ));
    }
    if (capabilities != null) {
      result$
        ..add(const _i3.XmlElementName('Capabilities'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          capabilities,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Capability)],
          ),
        ));
    }
    if (outputs != null) {
      result$
        ..add(const _i3.XmlElementName('Outputs'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          outputs,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Output)],
          ),
        ));
    }
    if (roleArn != null) {
      result$
        ..add(const _i3.XmlElementName('RoleARN'))
        ..add(serializers.serialize(
          roleArn,
          specifiedType: const FullType(String),
        ));
    }
    if (tags != null) {
      result$
        ..add(const _i3.XmlElementName('Tags'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          tags,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(Tag)],
          ),
        ));
    }
    if (enableTerminationProtection != null) {
      result$
        ..add(const _i3.XmlElementName('EnableTerminationProtection'))
        ..add(serializers.serialize(
          enableTerminationProtection,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    if (parentId != null) {
      result$
        ..add(const _i3.XmlElementName('ParentId'))
        ..add(serializers.serialize(
          parentId,
          specifiedType: const FullType(String),
        ));
    }
    if (rootId != null) {
      result$
        ..add(const _i3.XmlElementName('RootId'))
        ..add(serializers.serialize(
          rootId,
          specifiedType: const FullType(String),
        ));
    }
    if (driftInformation != null) {
      result$
        ..add(const _i3.XmlElementName('DriftInformation'))
        ..add(serializers.serialize(
          driftInformation,
          specifiedType: const FullType(StackDriftInformation),
        ));
    }
    if (retainExceptOnCreate != null) {
      result$
        ..add(const _i3.XmlElementName('RetainExceptOnCreate'))
        ..add(serializers.serialize(
          retainExceptOnCreate,
          specifiedType: const FullType.nullable(bool),
        ));
    }
    return result$;
  }
}

// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.modify_verified_access_instance_logging_configuration_request; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i1;
import 'package:smoke_test/src/sdk/src/ec2/model/verified_access_log_options.dart';

part 'modify_verified_access_instance_logging_configuration_request.g.dart';

abstract class ModifyVerifiedAccessInstanceLoggingConfigurationRequest
    with
        _i1.HttpInput<ModifyVerifiedAccessInstanceLoggingConfigurationRequest>,
        _i2
        .AWSEquatable<ModifyVerifiedAccessInstanceLoggingConfigurationRequest>
    implements
        Built<ModifyVerifiedAccessInstanceLoggingConfigurationRequest,
            ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder> {
  factory ModifyVerifiedAccessInstanceLoggingConfigurationRequest({
    String? verifiedAccessInstanceId,
    VerifiedAccessLogOptions? accessLogs,
    bool? dryRun,
    String? clientToken,
  }) {
    dryRun ??= false;
    return _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest._(
      verifiedAccessInstanceId: verifiedAccessInstanceId,
      accessLogs: accessLogs,
      dryRun: dryRun,
      clientToken: clientToken,
    );
  }

  factory ModifyVerifiedAccessInstanceLoggingConfigurationRequest.build(
      [void Function(
              ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder)
          updates]) = _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest;

  const ModifyVerifiedAccessInstanceLoggingConfigurationRequest._();

  factory ModifyVerifiedAccessInstanceLoggingConfigurationRequest.fromRequest(
    ModifyVerifiedAccessInstanceLoggingConfigurationRequest payload,
    _i2.AWSBaseHttpRequest request, {
    Map<String, String> labels = const {},
  }) =>
      payload;

  static const List<
          _i1.SmithySerializer<
              ModifyVerifiedAccessInstanceLoggingConfigurationRequest>>
      serializers = [
    ModifyVerifiedAccessInstanceLoggingConfigurationRequestEc2QuerySerializer()
  ];

  @BuiltValueHook(initializeBuilder: true)
  static void _init(
      ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder b) {
    b
      ..dryRun = false
      ..clientToken = const bool.hasEnvironment('SMITHY_TEST')
          ? '00000000-0000-4000-8000-000000000000'
          : _i2.uuid(secure: true);
  }

  /// The ID of the Verified Access instance.
  String? get verifiedAccessInstanceId;

  /// The configuration options for Verified Access instances.
  VerifiedAccessLogOptions? get accessLogs;

  /// Checks whether you have the required permissions for the action, without actually making the request, and provides an error response. If you have the required permissions, the error response is `DryRunOperation`. Otherwise, it is `UnauthorizedOperation`.
  bool get dryRun;

  /// A unique, case-sensitive token that you provide to ensure idempotency of your modification request. For more information, see [Ensuring Idempotency](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html).
  String? get clientToken;
  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationRequest getPayload() => this;
  @override
  List<Object?> get props => [
        verifiedAccessInstanceId,
        accessLogs,
        dryRun,
        clientToken,
      ];
  @override
  String toString() {
    final helper = newBuiltValueToStringHelper(
        'ModifyVerifiedAccessInstanceLoggingConfigurationRequest')
      ..add(
        'verifiedAccessInstanceId',
        verifiedAccessInstanceId,
      )
      ..add(
        'accessLogs',
        accessLogs,
      )
      ..add(
        'dryRun',
        dryRun,
      )
      ..add(
        'clientToken',
        clientToken,
      );
    return helper.toString();
  }
}

class ModifyVerifiedAccessInstanceLoggingConfigurationRequestEc2QuerySerializer
    extends _i1.StructuredSmithySerializer<
        ModifyVerifiedAccessInstanceLoggingConfigurationRequest> {
  const ModifyVerifiedAccessInstanceLoggingConfigurationRequestEc2QuerySerializer()
      : super('ModifyVerifiedAccessInstanceLoggingConfigurationRequest');

  @override
  Iterable<Type> get types => const [
        ModifyVerifiedAccessInstanceLoggingConfigurationRequest,
        _$ModifyVerifiedAccessInstanceLoggingConfigurationRequest,
      ];
  @override
  Iterable<_i1.ShapeId> get supportedProtocols => const [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ];
  @override
  ModifyVerifiedAccessInstanceLoggingConfigurationRequest deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result =
        ModifyVerifiedAccessInstanceLoggingConfigurationRequestBuilder();
    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final value = iterator.current;
      if (value == null) {
        continue;
      }
      switch (key) {
        case 'VerifiedAccessInstanceId':
          result.verifiedAccessInstanceId = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'AccessLogs':
          result.accessLogs.replace((serializers.deserialize(
            value,
            specifiedType: const FullType(VerifiedAccessLogOptions),
          ) as VerifiedAccessLogOptions));
        case 'DryRun':
          result.dryRun = (serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool);
        case 'ClientToken':
          result.clientToken = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ModifyVerifiedAccessInstanceLoggingConfigurationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i1.XmlElementName(
        'ModifyVerifiedAccessInstanceLoggingConfigurationRequestResponse',
        _i1.XmlNamespace('http://ec2.amazonaws.com/doc/2016-11-15'),
      )
    ];
    final ModifyVerifiedAccessInstanceLoggingConfigurationRequest(
      :verifiedAccessInstanceId,
      :accessLogs,
      :dryRun,
      :clientToken
    ) = object;
    if (verifiedAccessInstanceId != null) {
      result$
        ..add(const _i1.XmlElementName('VerifiedAccessInstanceId'))
        ..add(serializers.serialize(
          verifiedAccessInstanceId,
          specifiedType: const FullType(String),
        ));
    }
    if (accessLogs != null) {
      result$
        ..add(const _i1.XmlElementName('AccessLogs'))
        ..add(serializers.serialize(
          accessLogs,
          specifiedType: const FullType(VerifiedAccessLogOptions),
        ));
    }
    result$
      ..add(const _i1.XmlElementName('DryRun'))
      ..add(serializers.serialize(
        dryRun,
        specifiedType: const FullType(bool),
      ));
    if (clientToken != null) {
      result$
        ..add(const _i1.XmlElementName('ClientToken'))
        ..add(serializers.serialize(
          clientToken,
          specifiedType: const FullType(String),
        ));
    }
    return result$;
  }
}

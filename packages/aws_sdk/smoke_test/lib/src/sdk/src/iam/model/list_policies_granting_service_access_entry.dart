// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.iam.model.list_policies_granting_service_access_entry; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:aws_common/aws_common.dart' as _i1;
import 'package:built_collection/built_collection.dart' as _i2;
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:smithy/smithy.dart' as _i3;
import 'package:smoke_test/src/sdk/src/iam/model/policy_granting_service_access.dart';

part 'list_policies_granting_service_access_entry.g.dart';

/// Contains details about the permissions policies that are attached to the specified identity (user, group, or role).
///
/// This data type is used as a response element in the ListPoliciesGrantingServiceAccess operation.
abstract class ListPoliciesGrantingServiceAccessEntry
    with
        _i1.AWSEquatable<ListPoliciesGrantingServiceAccessEntry>
    implements
        Built<ListPoliciesGrantingServiceAccessEntry,
            ListPoliciesGrantingServiceAccessEntryBuilder> {
  /// Contains details about the permissions policies that are attached to the specified identity (user, group, or role).
  ///
  /// This data type is used as a response element in the ListPoliciesGrantingServiceAccess operation.
  factory ListPoliciesGrantingServiceAccessEntry({
    String? serviceNamespace,
    List<PolicyGrantingServiceAccess>? policies,
  }) {
    return _$ListPoliciesGrantingServiceAccessEntry._(
      serviceNamespace: serviceNamespace,
      policies: policies == null ? null : _i2.BuiltList(policies),
    );
  }

  /// Contains details about the permissions policies that are attached to the specified identity (user, group, or role).
  ///
  /// This data type is used as a response element in the ListPoliciesGrantingServiceAccess operation.
  factory ListPoliciesGrantingServiceAccessEntry.build(
      [void Function(ListPoliciesGrantingServiceAccessEntryBuilder)
          updates]) = _$ListPoliciesGrantingServiceAccessEntry;

  const ListPoliciesGrantingServiceAccessEntry._();

  static const List<
          _i3.SmithySerializer<ListPoliciesGrantingServiceAccessEntry>>
      serializers = [
    ListPoliciesGrantingServiceAccessEntryAwsQuerySerializer()
  ];

  /// The namespace of the service that was accessed.
  ///
  /// To learn the service namespace of a service, see [Actions, resources, and condition keys for Amazon Web Services services](https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html) in the _Service Authorization Reference_. Choose the name of the service to view details for that service. In the first paragraph, find the service prefix. For example, `(service prefix: a4b)`. For more information about service namespaces, see [Amazon Web Services service namespaces](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#genref-aws-service-namespaces) in the _Amazon Web Services General Reference_.
  String? get serviceNamespace;

  /// The `PoliciesGrantingServiceAccess` object that contains details about the policy.
  _i2.BuiltList<PolicyGrantingServiceAccess>? get policies;
  @override
  List<Object?> get props => [
        serviceNamespace,
        policies,
      ];
  @override
  String toString() {
    final helper =
        newBuiltValueToStringHelper('ListPoliciesGrantingServiceAccessEntry')
          ..add(
            'serviceNamespace',
            serviceNamespace,
          )
          ..add(
            'policies',
            policies,
          );
    return helper.toString();
  }
}

class ListPoliciesGrantingServiceAccessEntryAwsQuerySerializer extends _i3
    .StructuredSmithySerializer<ListPoliciesGrantingServiceAccessEntry> {
  const ListPoliciesGrantingServiceAccessEntryAwsQuerySerializer()
      : super('ListPoliciesGrantingServiceAccessEntry');

  @override
  Iterable<Type> get types => const [
        ListPoliciesGrantingServiceAccessEntry,
        _$ListPoliciesGrantingServiceAccessEntry,
      ];
  @override
  Iterable<_i3.ShapeId> get supportedProtocols => const [
        _i3.ShapeId(
          namespace: 'aws.protocols',
          shape: 'awsQuery',
        )
      ];
  @override
  ListPoliciesGrantingServiceAccessEntry deserialize(
    Serializers serializers,
    Iterable<Object?> serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListPoliciesGrantingServiceAccessEntryBuilder();
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
        case 'ServiceNamespace':
          result.serviceNamespace = (serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String);
        case 'Policies':
          result.policies.replace((const _i3.XmlBuiltListSerializer(
                  indexer: _i3.XmlIndexer.awsQueryList)
              .deserialize(
            serializers,
            value is String ? const [] : (value as Iterable<Object?>),
            specifiedType: const FullType(
              _i2.BuiltList,
              [FullType(PolicyGrantingServiceAccess)],
            ),
          ) as _i2.BuiltList<PolicyGrantingServiceAccess>));
      }
    }

    return result.build();
  }

  @override
  Iterable<Object?> serialize(
    Serializers serializers,
    ListPoliciesGrantingServiceAccessEntry object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result$ = <Object?>[
      const _i3.XmlElementName(
        'ListPoliciesGrantingServiceAccessEntryResponse',
        _i3.XmlNamespace('https://iam.amazonaws.com/doc/2010-05-08/'),
      )
    ];
    final ListPoliciesGrantingServiceAccessEntry(:serviceNamespace, :policies) =
        object;
    if (serviceNamespace != null) {
      result$
        ..add(const _i3.XmlElementName('ServiceNamespace'))
        ..add(serializers.serialize(
          serviceNamespace,
          specifiedType: const FullType(String),
        ));
    }
    if (policies != null) {
      result$
        ..add(const _i3.XmlElementName('Policies'))
        ..add(const _i3.XmlBuiltListSerializer(
                indexer: _i3.XmlIndexer.awsQueryList)
            .serialize(
          serializers,
          policies,
          specifiedType: const FullType.nullable(
            _i2.BuiltList,
            [FullType(PolicyGrantingServiceAccess)],
          ),
        ));
    }
    return result$;
  }
}

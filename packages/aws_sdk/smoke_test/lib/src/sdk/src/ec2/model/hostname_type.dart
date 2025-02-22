// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.ec2.model.hostname_type; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class HostnameType extends _i1.SmithyEnum<HostnameType> {
  const HostnameType._(
    super.index,
    super.name,
    super.value,
  );

  const HostnameType._sdkUnknown(super.value) : super.sdkUnknown();

  static const ipName = HostnameType._(
    0,
    'ip_name',
    'ip-name',
  );

  static const resourceName = HostnameType._(
    1,
    'resource_name',
    'resource-name',
  );

  /// All values of [HostnameType].
  static const values = <HostnameType>[
    HostnameType.ipName,
    HostnameType.resourceName,
  ];

  static const List<_i1.SmithySerializer<HostnameType>> serializers = [
    _i1.SmithyEnumSerializer(
      'HostnameType',
      values: values,
      sdkUnknown: HostnameType._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'ec2Query',
        )
      ],
    )
  ];
}

extension HostnameTypeHelpers on List<HostnameType> {
  /// Returns the value of [HostnameType] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  HostnameType byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [HostnameType] whose value matches [value].
  HostnameType byValue(String value) => firstWhere((el) => el.value == value);
}

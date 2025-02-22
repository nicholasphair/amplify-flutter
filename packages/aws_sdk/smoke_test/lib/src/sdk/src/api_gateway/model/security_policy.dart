// Generated with smithy-dart 0.3.1. DO NOT MODIFY.
// ignore_for_file: avoid_unused_constructor_parameters,deprecated_member_use_from_same_package,non_constant_identifier_names,require_trailing_commas

library smoke_test.api_gateway.model.security_policy; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'package:smithy/smithy.dart' as _i1;

class SecurityPolicy extends _i1.SmithyEnum<SecurityPolicy> {
  const SecurityPolicy._(
    super.index,
    super.name,
    super.value,
  );

  const SecurityPolicy._sdkUnknown(super.value) : super.sdkUnknown();

  static const tls10 = SecurityPolicy._(
    0,
    'TLS_1_0',
    'TLS_1_0',
  );

  static const tls12 = SecurityPolicy._(
    1,
    'TLS_1_2',
    'TLS_1_2',
  );

  /// All values of [SecurityPolicy].
  static const values = <SecurityPolicy>[
    SecurityPolicy.tls10,
    SecurityPolicy.tls12,
  ];

  static const List<_i1.SmithySerializer<SecurityPolicy>> serializers = [
    _i1.SmithyEnumSerializer(
      'SecurityPolicy',
      values: values,
      sdkUnknown: SecurityPolicy._sdkUnknown,
      supportedProtocols: [
        _i1.ShapeId(
          namespace: 'aws.protocols',
          shape: 'restJson1',
        )
      ],
    )
  ];
}

extension SecurityPolicyHelpers on List<SecurityPolicy> {
  /// Returns the value of [SecurityPolicy] whose name matches [name].
  ///
  /// Throws a `StateError` if no matching value is found.
  SecurityPolicy byName(String name) =>
      firstWhere((el) => el.name.toLowerCase() == name.toLowerCase());

  /// Returns the value of [SecurityPolicy] whose value matches [value].
  SecurityPolicy byValue(String value) => firstWhere((el) => el.value == value);
}

// Generated with smithy-dart 0.1.1. DO NOT MODIFY.

library smoke_test.config_service.operation.get_compliance_summary_by_config_rule_operation; // ignore_for_file: no_leading_underscores_for_library_prefixes

import 'dart:async' as _i8;

import 'package:aws_common/aws_common.dart' as _i6;
import 'package:aws_signature_v4/aws_signature_v4.dart' as _i3;
import 'package:smithy/smithy.dart' as _i1;
import 'package:smithy_aws/smithy_aws.dart' as _i4;
import 'package:smoke_test/src/sdk/src/config_service/common/endpoint_resolver.dart'
    as _i7;
import 'package:smoke_test/src/sdk/src/config_service/common/serializers.dart'
    as _i5;
import 'package:smoke_test/src/sdk/src/config_service/model/get_compliance_summary_by_config_rule_response.dart'
    as _i2;

/// Returns the number of Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
class GetComplianceSummaryByConfigRuleOperation extends _i1.HttpOperation<
    _i1.Unit,
    _i1.Unit,
    _i2.GetComplianceSummaryByConfigRuleResponse,
    _i2.GetComplianceSummaryByConfigRuleResponse> {
  /// Returns the number of Config rules that are compliant and noncompliant, up to a maximum of 25 for each.
  GetComplianceSummaryByConfigRuleOperation({
    required String region,
    Uri? baseUri,
    _i3.AWSCredentialsProvider credentialsProvider =
        const _i3.AWSCredentialsProvider.environment(),
  })  : _region = region,
        _baseUri = baseUri,
        _credentialsProvider = credentialsProvider;

  @override
  late final List<
      _i1.HttpProtocol<
          _i1.Unit,
          _i1.Unit,
          _i2.GetComplianceSummaryByConfigRuleResponse,
          _i2.GetComplianceSummaryByConfigRuleResponse>> protocols = [
    _i4.AwsJson1_1Protocol(
      serializers: _i5.serializers,
      builderFactories: _i5.builderFactories,
      requestInterceptors: [
        const _i1.WithHost(),
        const _i1.WithHeader(
          'X-Amz-Target',
          'StarlingDoveService.GetComplianceSummaryByConfigRule',
        ),
        _i4.WithSigV4(
          region: _region,
          service: _i6.AWSService.configService,
          credentialsProvider: _credentialsProvider,
        ),
        const _i1.WithUserAgent('aws-sdk-dart/0.1.1'),
        const _i4.WithSdkInvocationId(),
        const _i4.WithSdkRequest(),
      ],
      responseInterceptors: [],
    )
  ];

  late final _i4.AWSEndpoint _awsEndpoint = _i7.endpointResolver.resolve(
    _i7.sdkId,
    _region,
  );

  final String _region;

  final Uri? _baseUri;

  final _i3.AWSCredentialsProvider _credentialsProvider;

  @override
  _i1.HttpRequest buildRequest(_i1.Unit input) => _i1.HttpRequest((b) {
        b.method = 'POST';
        b.path = r'/';
      });
  @override
  int successCode([_i2.GetComplianceSummaryByConfigRuleResponse? output]) =>
      200;
  @override
  _i2.GetComplianceSummaryByConfigRuleResponse buildOutput(
    _i2.GetComplianceSummaryByConfigRuleResponse payload,
    _i6.AWSStreamedHttpResponse response,
  ) =>
      _i2.GetComplianceSummaryByConfigRuleResponse.fromResponse(
        payload,
        response,
      );
  @override
  List<_i1.SmithyError> get errorTypes => const [];
  @override
  _i4.AWSRetryer get retryer => _i4.AWSRetryer();
  @override
  Uri get baseUri => _baseUri ?? endpoint.uri;
  @override
  _i1.Endpoint get endpoint => _awsEndpoint.endpoint;
  @override
  _i8.Future<_i2.GetComplianceSummaryByConfigRuleResponse> run(
    _i1.Unit input, {
    _i1.HttpClient? client,
    _i1.ShapeId? useProtocol,
  }) {
    return _i8.runZoned(
      () => super.run(
        input,
        client: client,
        useProtocol: useProtocol,
      ),
      zoneValues: {
        ...?_awsEndpoint.credentialScope?.zoneValues,
        ...{_i6.AWSHeaders.sdkInvocationId: _i6.uuid(secure: true)}
      },
    );
  }
}

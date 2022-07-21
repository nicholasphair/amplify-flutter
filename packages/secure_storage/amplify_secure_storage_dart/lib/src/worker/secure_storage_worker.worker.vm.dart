// Generated by worker_bee_builder.

import 'dart:async';
import 'dart:isolate';

import 'package:amplify_secure_storage_dart/src/worker/secure_storage_worker.dart';
import 'package:worker_bee/worker_bee.dart';

Future<void> _run(SendPorts ports) async {
  final channel = IsolateChannel<Object?>.connectSend(ports.messagePort);
  final logsChannel = IsolateChannel<LogEntry>.connectSend(ports.logPort);
  final worker = SecureStorageWorkerImpl();
  await worker.connect(logsChannel: logsChannel);
  final result = await worker.run(
    channel.stream.asBroadcastStream().cast(),
    channel.sink.cast(),
  );
// ignore: invalid_use_of_protected_member
  worker.logger.verbose('Finished');
  unawaited(worker.close());
  Isolate.exit(ports.donePort, result);
}

/// The VM implementation of [SecureStorageWorker].
class SecureStorageWorkerImpl extends SecureStorageWorker {
  @override
  String get name => 'SecureStorageWorker';
  @override
  VmEntrypoint get vmEntrypoint => _run;
}

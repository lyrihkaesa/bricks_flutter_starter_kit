import 'dart:io';
import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final logger = context.logger;

  if (!File('pubspec.yaml').existsSync()) {
    logger.err('⚠️   Tidak ditemukan pubspec.yaml di project ini.');
    logger.info(
      '➡️   Jalankan mason di dalam project Flutter/Dart. Untuk install package dan menjalankan build runner',
    );
    return;
  }

  // Pastikan dart tersedia
  if (!await _isCommandAvailable('dart')) {
    logger.err('❌ Dart SDK tidak ditemukan di PATH.');
    logger.info('➡️ Silakan install Flutter SDK (sudah termasuk Dart).');
    return;
  }

  logger.info('✅ Menambahkan dependency yang dibutuhkan...');

  // Tambah dependencies
  await _run(logger, 'dart', ['pub', 'add', 'freezed_annotation']);
  await _run(logger, 'dart', ['pub', 'add', 'json_annotation']);
  await _run(logger, 'dart', ['pub', 'add', 'freezed', '--dev']);
  await _run(logger, 'dart', ['pub', 'add', 'build_runner', '--dev']);

  // Generate freezed files
  logger.info('🚀 Menjalankan build_runner...');
  await _run(logger, 'dart', ['run', 'build_runner', 'build', '--delete-conflicting-outputs']);

  logger.success('🎉 Setup selesai! Freezed siap digunakan.');
}

Future<bool> _isCommandAvailable(String command) async {
  try {
    final result = await Process.run(Platform.isWindows ? 'where' : 'which', [command]);
    return result.exitCode == 0;
  } catch (_) {
    return false;
  }
}

Future<void> _run(Logger logger, String cmd, List<String> args) async {
  final process = await Process.start(cmd, args);

  process.stdout.transform(SystemEncoding().decoder).listen((line) => logger.info(line));
  process.stderr.transform(SystemEncoding().decoder).listen((line) => logger.err(line));

  final exitCode = await process.exitCode;
  if (exitCode != 0) {
    logger.err('❌ Gagal menjalankan: $cmd ${args.join(' ')}');
  }
}

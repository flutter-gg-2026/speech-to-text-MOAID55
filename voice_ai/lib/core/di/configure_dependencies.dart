import 'package:get_it/get_it.dart';
import 'package:voice_ai/core/di/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';
import 'package:voice_ai/features/home/di/home_di.dart';
import 'package:voice_ai/features/sub/voice/di/voice_di.dart';

@InjectableInit(
  initializerName: 'init', 
  preferRelativeImports: true,
  asExtension: true, 
  generateForDir: ['lib/core'],
)

Future<void> configureDependencies() async {
  final getIt = GetIt.instance;
  getIt.init();
    configureHome(getIt);
    configureVoiceSub(getIt);
}

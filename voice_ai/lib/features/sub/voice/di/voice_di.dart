import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'voice_di.config.dart'; 

@InjectableInit(
  initializerName: 'initVoiceSub',
   // Optional: specify the directory to scan for injectable annotations
  generateForDir: ['lib/features/sub/voice'],
)
void configureVoiceSub(GetIt getIt) {
  getIt.initVoiceSub();
}

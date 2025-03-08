import 'package:kib_core/kib_core.dart';

Future<void> initRemoteConfigs() async {
  await getIt.isReady<FirebaseConfig>();
  final firebaseConfig = getIt<FirebaseConfig>();
  await firebaseConfig.fetch().catchError((_) => Future.value(true));
}

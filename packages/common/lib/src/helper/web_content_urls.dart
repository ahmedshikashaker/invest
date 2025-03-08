import 'package:common_dependencies/common_dependencies.dart';
import 'package:flutter/material.dart' show BuildContext;
import 'package:kib_core/kib_core.dart';

@injectable
class StaticWebContentURLResolver {
  StaticWebContentURLResolver(this._firebaseConfig);

  final FirebaseConfig _firebaseConfig;

  String getContentURL(BuildContext context, WebContentType type) =>
      _firebaseConfig.loadStringBy(
        key: _addRemoteConfigPrefixSuffix(context, type),
      );
}

enum WebContentType { privacyAndPolicy }

String _addRemoteConfigPrefixSuffix(
  BuildContext context,
  WebContentType contentType, {
  bool localized = true,
}) {
  final prefix = context.read<GlobalSettingsCubit>().remoteConfigPrefix;
  final suffix = localized ? (context.locale.isArabic ? 'Ar' : 'En') : '';
  return '$prefix${contentType.name}$suffix';
}

import 'dart:typed_data';

import 'package:kib_core/kib_core.dart';
import 'package:kib_design_system/kib_design_system.dart';

Future<dynamic> uploadFile(
    PlatformFile? platformFile, AbstractRemoteFileManager manager,
    {required String bucket,
    required String filename,
    String? region,
    Map<String, String>? metadata}) async {
  if (platformFile?.bytes != null) {
    return await manager.uploadByteFile(
        bucket: bucket,
        filename: filename,
        bytes: platformFile!.bytes!,
        region: region,
        metadata: metadata);
  } else if (platformFile?.readStream != null) {
    return await manager.uploadStreamFile(
        bucket: bucket,
        filename: filename,
        data:
            platformFile!.readStream!.map((event) => Uint8List.fromList(event)),
        region: region,
        metadata: metadata);
  } else if (platformFile?.path != null) {
    return await manager.uploadFileFromPath(
        bucket: bucket,
        name: filename,
        path: platformFile!.path!,
        region: region,
        metadata: metadata);
  }
}

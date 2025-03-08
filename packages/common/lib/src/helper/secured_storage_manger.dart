import 'package:kib_core/kib_core.dart';

class StorageManger {
  static Future<void> saveLoginData(
      String? token,
      String? refreshToken,
      String? fullName,
      String? userId,
      String? profilePictureId,
      String? biometricUserName,
      String? deviceId) async {
    await StorageManger.saveToken(token ?? "");
    await StorageManger.saveRefreshToken(refreshToken ?? "");
    await StorageManger.saveFullName(fullName ?? "");
    await StorageManger.saveUserId(userId ?? "");
    await StorageManger.saveProfilePictureId(profilePictureId ?? "");
    await StorageManger.saveBiometricUserName(biometricUserName ?? "");
    await StorageManger.saveDeviceId(deviceId ?? "");
  }

  static Future<void> saveToken(String token) async {
    return await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.token)
        .write(token);
  }

  static Future<void> saveRefreshToken(String refreshToken) async {
    await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.refreshToken)
        .write(refreshToken);
  }

  static Future<void> saveFullName(String fullName) async {
    return await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.userFullName)
        .write(fullName);
  }

  static Future<void> saveUserId(String userId) async {
    return await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.userId)
        .write(userId);
  }

  static Future<void> saveProfilePictureId(String profilePictureId) async {
    return await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.userProfilePicture)
        .write(profilePictureId);
  }

  static Future<void> saveBiometricUserName(String biometricUserName) async {
    return await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.biometricUserName)
        .write(biometricUserName);
  }

  static Future<void> saveDeviceId(String deviceId) async {
    return await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.isDeviceBonded)
        .write(deviceId);
  }

  static Future<void> saveBiometricData(String biometricData) async {
    return await SecuredStorageHandler.fromGlobalKey(
            storedKey: GlobalSecuredStorageKeys.biometricData)
        .write(biometricData);
  }
}

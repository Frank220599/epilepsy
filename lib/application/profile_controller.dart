import 'dart:convert';
import 'package:epilepsy/infrastracture/profile/repository.dart';
import 'package:epilepsy/infrastracture/profile/repository.dart';
import 'package:epilepsy/infrastracture/profile/repository.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:dio/dio.dart' as dio;

import '../domain/api_service.dart';
import '../domain/constants/routes.dart';
import '../domain/utils/device_storage.dart';
import '../infrastracture/types/profile_response.dart';

class ProfileController extends GetxController {
  var profile = ProfileData().obs;
  var avatar = XFile('').obs;

  var isLoading = false.obs;
  var isAvatarLoading = false.obs;
  var isUpdateLoading = false.obs;

  @override
  void onInit() {
    final token = DeviceStorage.token;
    final profileString = DeviceStorage.profile;
    ApiService.dio.options.headers['Authorization'] = 'Bearer $token';
    if (profileString != null) {
      final cachedProfile = json.decode(profileString);
      profile(ProfileData.fromJson(cachedProfile));
    }
    getProfile();
    super.onInit();
  }

  void cacheProfile(data) {
    if (data != null) {
      DeviceStorage.profile = json.encode(data);
      profile(data);
    }
  }

  Future<void> getProfile() async {
    try {
      isLoading.toggle();
      final data = await ProfileRepository.getProfile();
      cacheProfile(data.data);
    } catch (e) {
      throw Exception(e);
    } finally {
      isLoading.toggle();
    }
  }

  Future<void> updateProfile() async {
    try {
      isUpdateLoading.toggle();
      final payload = profile().profile.toJson();
      payload.remove('avatar');
      final data = await ProfileRepository.updateProfile(payload);
      Get.snackbar('successfully'.tr, 'updated'.tr);
      cacheProfile(data.data);
    } catch (e) {
      throw Exception(e);
    } finally {
      isUpdateLoading.toggle();
    }
  }

  Future<void> updateAvatar() async {
    try {
      isAvatarLoading.toggle();
      String fileName = avatar().path.split('/').last;
      dio.FormData formData = dio.FormData.fromMap({
        ...profile.value.profile.toJson(),
        "avatar": await dio.MultipartFile.fromFile(
          avatar().path,
          filename: fileName,
        ),
      });
      final data = await ProfileRepository.updateProfile(formData);
      cacheProfile(data.data);
    } catch (e) {
      throw Exception(e);
    } finally {
      isAvatarLoading.toggle();
    }
  }

  void logout() {
    DeviceStorage.clear();
    Get.offAndToNamed(ROUTES.AUTHORIZATION);
  }
}

import 'package:eco_shop/features/auth/data/models/login_response_dto.dart';

abstract interface class AuthRepositoryInterface {
  Future<Map<String, dynamic>> getRegister(
      {required String email,
      required String password,
      required String username,
      required String phoneNumber});

  Future<LoginResponseDto> getLogin(
      {required String password, required String username});

  Future<Map<String, dynamic>> getConfirm({required String code});
}

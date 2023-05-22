import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../../views/auth/log_in.dart';
import '../../views/customer/main_page.dart';
import 'exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    Future.delayed(const Duration(seconds: 6));
    firebaseUser = Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  //-- Check user loged in or not then open screen
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const Log_in())
        : Get.offAll(() => const MainPage());
  }

  //-- Signup function to create user
  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const MainPage())
          : Get.to(() => const Log_in());

    } on FirebaseAuthException catch (e) {

      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;

    } catch (_) {

      const ex = SignUpWithEmailAndPasswordFailure();
      print('EXCEPTION - ${ex.message}');
      throw ex;

    }
  }

  //-- Login function
  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  //-- Logout function
  Future<void> logout() async => await _auth.signOut();
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class KptarAppFirebaseUser {
  KptarAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

KptarAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<KptarAppFirebaseUser> kptarAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<KptarAppFirebaseUser>(
      (user) {
        currentUser = KptarAppFirebaseUser(user);
        return currentUser!;
      },
    );

import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class Possenger2FirebaseUser {
  Possenger2FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Possenger2FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Possenger2FirebaseUser> possenger2FirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Possenger2FirebaseUser>(
      (user) {
        currentUser = Possenger2FirebaseUser(user);
        return currentUser!;
      },
    );

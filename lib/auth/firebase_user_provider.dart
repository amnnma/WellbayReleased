import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WellbayFirebaseUser {
  WellbayFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

WellbayFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WellbayFirebaseUser> wellbayFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<WellbayFirebaseUser>(
        (user) => currentUser = WellbayFirebaseUser(user));

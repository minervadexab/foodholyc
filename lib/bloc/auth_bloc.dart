// auth_bloc.dart
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  AuthBloc() : super(AuthInitial()) {
    // Handle LoginRequested event
    on<LoginRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(Authenticated(userCredential.user));
      } catch (e) {
        emit(AuthError(e.toString()));
      }
    });

    // Handle LogoutRequested event
    on<LogoutRequested>((event, emit) async {
      await _auth.signOut();
      emit(Unauthenticated());
    });

    // Handle RegisterRequested event
    on<RegisterRequested>((event, emit) async {
      emit(AuthLoading());
      try {
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        emit(Authenticated(userCredential.user)); // User successfully registered
      } catch (e) {
        emit(AuthError(e.toString())); // Error during registration
      }
    });
  }
}

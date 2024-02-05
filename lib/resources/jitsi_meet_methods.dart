import 'package:flutter/foundation.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:sync_session/resources/auth_methods.dart';

class JitsiMeetMethods {
    final AuthMethods _authMethods = AuthMethods();
  void createMeeting({required String roomName, required bool isAudioMuted, required bool isVideoMuted}) async {
    try {
      var options = JitsiMeetingOptions(
      roomNameOrUrl: roomName,
      userDisplayName: _authMethods.user.displayName, 
      userEmail: _authMethods.user.email,
      userAvatarUrl: _authMethods.user.photoURL,
      isAudioMuted: isAudioMuted,
      isVideoMuted: isVideoMuted
      );
      await JitsiMeetWrapper.joinMeeting(options: options);
    } catch (error) {
      debugPrint("error: $error");
    }
  }
}

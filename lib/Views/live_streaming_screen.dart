import 'package:bigo/Controllers/agora_static.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;


class LiveStreamingScreen extends StatefulWidget {
  final bool isBroadcaster;
  const LiveStreamingScreen({Key? key, required this.isBroadcaster,}) : super(key: key);

  @override
  State<LiveStreamingScreen> createState() => _LiveStreamingScreenState();
}

class _LiveStreamingScreenState extends State<LiveStreamingScreen> {

  final _users = <int>[];
  RtcEngine?  rtcEngine;
  bool mute= false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }


  Future<void> initializeAgora() async {
    await _initailizedAgoraRtcEngine();

    rtcEngine!.setEventHandler(RtcEngineEventHandler(
      joinChannelSuccess: (channel, uid ,elapsed){
        setState(() {

          print('onJoinChannel : $channel, uid: $uid');
        });
      },
      leaveChannel: (stats){

        setState(() {
          print('leaveChannel');
          _users.clear();
        });

    },
      userJoined: (uid , elapsed){
        setState(() {
          print('userJoined $uid');
          _users.add(uid);
        });
      },
      userOffline: (uid, elapsed){

        print('userOffline $uid');
        _users.add(uid);
      }
    ));
    await rtcEngine!.joinChannel(AgoraCredientails.token, 'channelName', null, 0);
   }
   Future<void> _initailizedAgoraRtcEngine()async{

    rtcEngine = await RtcEngine.createWithContext(RtcEngineContext(AgoraCredientails.appId));

    await rtcEngine!.enableVideo();
    await rtcEngine!.setChannelProfile(ChannelProfile.LiveBroadcasting);
    if(widget.isBroadcaster){
      await rtcEngine!.setClientRole(ClientRole.Broadcaster);
    }else{
      await rtcEngine!.setClientRole(ClientRole.Audience);

    }
   }


   List<Widget> _getRenderViews(){
    final List<StatefulWidget> list = [];
    if(widget.isBroadcaster){
      list.add(RtcLocalView.SurfaceView());
    }
    _users.forEach((int uid) =>list.add(RtcRemoteView.SurfaceView(uid: uid, channelId: "channel",)));
    return list;
   }
   @override
  void dispose() {
    _users.clear();
    rtcEngine!.destroy();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _getRenderViews(),
      ),
    );
  }
}

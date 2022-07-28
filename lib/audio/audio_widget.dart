import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_audio_player.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class AudioWidget extends StatefulWidget {
  const AudioWidget({Key key}) : super(key: key);

  @override
  _AudioWidgetState createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              StreamBuilder<List<PodcastRecord>>(
                stream: queryPodcastRecord(
                  queryBuilder: (podcastRecord) =>
                      podcastRecord.orderBy('podcastid'),
                  limit: 5,
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 40,
                        height: 40,
                        child: SpinKitFadingCube(
                          color: Color(0xFF8E97FD),
                          size: 40,
                        ),
                      ),
                    );
                  }
                  List<PodcastRecord> listViewPodcastRecordList = snapshot.data;
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewPodcastRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewPodcastRecord =
                          listViewPodcastRecordList[listViewIndex];
                      return FlutterFlowAudioPlayer(
                        audio: Audio.network(
                          listViewPodcastRecord.podcastpath,
                          metas: Metas(
                            id: 'df3hg_-bj5qrdgt',
                          ),
                        ),
                        titleTextStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                        playbackDurationTextStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF9D9D9D),
                                  fontSize: 12,
                                ),
                        fillColor: Color(0xFFEEEEEE),
                        playbackButtonColor:
                            FlutterFlowTheme.of(context).primaryColor,
                        activeTrackColor: Color(0xFF57636C),
                        elevation: 4,
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

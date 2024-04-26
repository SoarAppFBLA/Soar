import '/backend/backend.dart';
import '/components/what_in_awards_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'award_showcased_everyone_model.dart';
export 'award_showcased_everyone_model.dart';

class AwardShowcasedEveryoneWidget extends StatefulWidget {
  const AwardShowcasedEveryoneWidget({
    super.key,
    required this.showcaseAwardsDoc,
  });

  final ShowcaseAwardsRecord? showcaseAwardsDoc;

  @override
  State<AwardShowcasedEveryoneWidget> createState() =>
      _AwardShowcasedEveryoneWidgetState();
}

class _AwardShowcasedEveryoneWidgetState
    extends State<AwardShowcasedEveryoneWidget> {
  late AwardShowcasedEveryoneModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AwardShowcasedEveryoneModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(24.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).primaryText,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(8.0, 6.0, 0.0, 6.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                enableDrag: false,
                context: context,
                builder: (context) {
                  return Padding(
                    padding: MediaQuery.viewInsetsOf(context),
                    child: WhatInAwardsWidget(
                      showcaseAwards: widget.showcaseAwardsDoc!,
                    ),
                  );
                },
              ).then((value) => safeSetState(() {}));
            },
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 35.0,
                  height: 35.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    valueOrDefault<String>(
                      widget.showcaseAwardsDoc?.photoUrl,
                      'user pic',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.showcaseAwardsDoc?.displayName,
                    'name',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Inter',
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                  child: Text(
                    valueOrDefault<String>(
                      widget.showcaseAwardsDoc?.title,
                      'title',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(const SizedBox(width: 5.0)),
            ),
          ),
        ),
      ),
    );
  }
}

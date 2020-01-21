import 'package:showpoint_spot_desktop/models/CueModel.dart';

class AppStateModel {
  final List<CueModel> cues;

  AppStateModel({
    this.cues,
  });

  AppStateModel copyWith({
    List<CueModel> cues,
  }) {
    return AppStateModel(
      cues: cues ?? this.cues,
    );
  }
}

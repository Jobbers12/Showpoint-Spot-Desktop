import 'package:showpoint_spot_desktop/models/CueModel.dart';

class AppStateModel {
  final List<CueModel> cues;
  final bool isStorageReady;

  AppStateModel({
    this.cues,
    this.isStorageReady,
  });

  AppStateModel copyWith({
    List<CueModel> cues,
    bool isStorageReady,
  }) {
    return AppStateModel(
      cues: cues ?? this.cues,
      isStorageReady: isStorageReady ?? this.isStorageReady,
    );
  }
}

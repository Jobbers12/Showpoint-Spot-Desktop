import 'package:showpoint_spot_desktop/models/CueModel.dart';

class AppStateModel {
  final List<CueModel> cues;
  final bool isStorageReady;
  final int selectedSpotID;

  AppStateModel({
    this.cues,
    this.isStorageReady,
    this.selectedSpotID,
  });

  AppStateModel copyWith({
    List<CueModel> cues,
    bool isStorageReady,
    int selectedSpotID,
  }) {
    return AppStateModel(
      cues: cues ?? this.cues,
      isStorageReady: isStorageReady ?? this.isStorageReady,
      selectedSpotID: selectedSpotID ?? this.selectedSpotID,
    );
  }
}

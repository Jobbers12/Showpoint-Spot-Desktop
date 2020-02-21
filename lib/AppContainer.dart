import 'package:flutter/material.dart';
import 'package:localstorage/localstorage.dart';
import 'package:showpoint_spot_desktop/enums.dart';
import 'package:showpoint_spot_desktop/main.dart';
import 'package:showpoint_spot_desktop/models/AppStateModel.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

LocalStorage _appStorage;
bool _isStorageReady;

class AppContainer extends StatefulWidget {
  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  AppStateModel appState;

  @override
  void initState() {
    _initAppStorage();

    appState = AppStateModel(
      cues: <CueModel>[
        CueModel(
          uid: '1',
          spotID: 1,
          spotCue: 1,
          who: 'Roxie',
          intensity: 100,
          size: 'FB',
          color: 'F + 2',
          time: '3s',
          lxCue: 4,
          location: 'DS OP - P/U on Rostra',
          notes:
              'Occaecat adipisicing velit adipisicing labore ullamco qui eu culpa duis est pariatur esse fugiat occaecat.',
          cueType: CueType.intensity,
        ),
        CueModel(
          uid: '2',
          spotID: 1,
          spotCue: 2,
          who: 'Soxie',
          intensity: 11,
          size: 'FB',
          color: 'F + 2',
          time: '3s',
          lxCue: 4,
          location: 'DS OP - P/U on Rostra',
          notes:
              'Occaecat adipisicing velit adipisicing labore ullamco qui eu culpa duis est pariatur esse fugiat occaecat.',
          cueType: CueType.color,
        ),
        CueModel(
          uid: '3',
          spotID: 1,
          spotCue: 3,
          who: 'Boxie',
          intensity: 34,
          size: 'FB',
          color: 'F + 2',
          time: '3s',
          lxCue: 4,
          location: 'DS OP - P/U on Rostra',
          notes:
              'Occaecat adipisicing velit adipisicing labore ullamco qui eu culpa duis est pariatur esse fugiat occaecat.',
          cueType: CueType.iris,
        ),
        CueModel(
          uid: '4',
          spotID: 1,
          spotCue: 4,
          who: 'Loxie',
          intensity: 85,
          size: 'HB',
          color: 'F + 2',
          time: '3s',
          lxCue: 4,
          location: 'DS OP - P/U on Rostra',
          notes:
              'Occaecat adipisicing velit adipisicing labore ullamco qui eu culpa duis est pariatur esse fugiat occaecat.',
          cueType: CueType.intensity,
        ),
        CueModel(
          uid: '5',
          spotID: 1,
          spotCue: 5,
          who: 'Loxie',
          intensity: 85,
          size: 'HB',
          color: 'F + 2',
          time: '3s',
          lxCue: 4,
          location: 'DS OP - P/U on Rostra',
          notes:
              'Occaecat adipisicing velit adipisicing labore ullamco qui eu culpa duis est pariatur esse fugiat occaecat.',
          cueType: CueType.out,
        ),
      ],
      selectedSpotID: 1,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return App(
      cues: appState.cues,
      selectedSpotID: appState.selectedSpotID,
      );
  }

  void _initAppStorage() async {
    _appStorage = new LocalStorage('fileName');
    final isInitialized = await _appStorage.ready;

    if (isInitialized) {
      _isStorageReady = true;
    }
  }

  // CRUD METHOD: Create - Add Cue
  Future<bool> addCue(CueModel newCue, AddInsert addInsert) async {
    // TODO: If inserting instead of adding- keep cues in order
    if (_isStorageReady == true) {
      final newList = appState.cues.toList()..add(newCue);

      if (addInsert == AddInsert.add) {
      } else {}

      _appStorage.setItem('cues', newList);
    }
  }

  // CRUD METHOD: Read - Get a cue based on ID
  Future<CueModel> getCue(String cueId) {}

  // CRUD METHOD: Update - Update a cue
  // Future<bool> updateCue(CueModel newCue) {
  //   final newList = appState.cues.map((item) => item.uid == newCue.uid ? item.copyWith(who: ‘Roxie’) : item);

  //   if (_isStorageReady == true) {
  //     _appStorage.setItem('cues', newList);
  //   }
  // }

  // CRUD METHOD: Delete - Remove a cue based on ID
  Future<bool> deleteCue(String cueId) {
    if (_isStorageReady == true) {
      final newList = appState.cues.where((item) => item.uid != cueId).toList();

      _appStorage.setItem('cues', newList);
    }
  }
}

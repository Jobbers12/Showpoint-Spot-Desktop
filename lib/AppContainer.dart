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

    appState = AppStateModel(cues: <CueModel>[
      CueModel(
        uid: '1',
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
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return App(cues: appState.cues);
  }

  void _initAppStorage() async {
    _appStorage = new LocalStorage('fileName');
    final isInitialized = await _appStorage.ready;

    if (isInitialized) {
      _isStorageReady = true;
    }
  }


  // CRUD METHOD: Create - Add Cue
  Future<bool> addCue(CueModel newCue) async {
    // TODO: If inserting instead of adding- keep cues in order
    if (_isStorageReady == true) {
      final newList = appState.cues.toList()..add(newCue);

      _appStorage.setItem('cues', newList);
    }
  }
}

//Blkash

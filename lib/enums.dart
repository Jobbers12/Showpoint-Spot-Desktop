// Types of cues
// enum CueType {
//   intensity,
//   color,
//   iris
// }

class CueType {
final _value;
const CueType._internal(this._value);
toString() => 'Enum.$_value';

  static const intensity = const CueType._internal('intensity');
  static const color = const CueType._internal('color');
  static const iris = const CueType._internal('iris');
}
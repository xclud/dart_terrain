import 'package:terrain/terrain.dart';

void main() {
  final terrain = Terrain(xPatchCount: 16, zPatchCount: 16);
  print('Patch Count: ${terrain.patches.length}');
}

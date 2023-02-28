import 'package:terrain/terrain.dart';
import 'package:test/test.dart';

void main() {
  group('Patch tests.', () {
    final terrain = Terrain(xPatchCount: 16, zPatchCount: 16);

    setUp(() {
      // Additional setup goes here.
    });

    test('Count.', () {
      expect(terrain.patches.length, 256);
    });
  });
}

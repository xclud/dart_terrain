part of terrain;

/// The Terrain.
class Terrain {
  /// Default Contructor.
  Terrain({
    required this.xPatchCount,
    required this.zPatchCount,
    this.patchTileCount = 16,
    this.tileSize = 4,
  })  : xSize = xPatchCount * patchTileCount + 1,
        zSize = zPatchCount * patchTileCount + 1,
        patches = [],
        heightmap = Uint16List(
          (xPatchCount * patchTileCount + 1) *
              (zPatchCount * patchTileCount + 1),
        ) {
    for (int x = 0; x < xPatchCount; x++) {
      for (int z = 0; z < zPatchCount; z++) {
        final patch = Patch._(this, x, z);

        patches.add(patch);
      }
    }
  }

  /// Number of [Patch]es in X direction.
  final int xPatchCount;

  /// Number of [Patch]es in Z direction.
  final int zPatchCount;

  /// Size of [Patch]es. Each patch has [patchTileCount] x [patchTileCount] tiles.
  final int patchTileCount;

  /// Size of each tile.
  final int tileSize;

  /// Number of cells in x direction.
  final int xSize;

  /// Number of cells in z direction.
  final int zSize;

  /// Heightmap of the terrain.
  final Uint16List heightmap;

  /// Patches.
  final List<Patch> patches;

  /// Calculates the normal of the terrain at given x, z.
  Vector3 getNormal(double x, double z, [bool exact = false]) {
    return Vector3.zero();
  }

  /// Calculates the elevation of the terrain at given x, z.
  double getElevation(double x, double z, [bool exact = false]) {
    return 0;
  }
}

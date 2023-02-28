part of terrain;

PatchSide _xSide(Terrain terrain, int x) {
  if (x == 0) {
    return PatchSide.negative;
  } else if (x == terrain.xPatchCount - 1) {
    return PatchSide.positive;
  } else {
    return PatchSide.middle;
  }
}

PatchSide _zSide(Terrain terrain, int z) {
  if (z == 0) {
    return PatchSide.negative;
  } else if (z == terrain.zPatchCount - 1) {
    return PatchSide.positive;
  } else {
    return PatchSide.middle;
  }
}

/// Represents a [Terrain] patch.
class Patch {
  Patch._(this.terrain, this.x, this.z)
      : xSide = _xSide(terrain, x),
        zSide = _zSide(terrain, z);

  /// Parent [Terrain].
  final Terrain terrain;

  /// X-Index of this patch in the parent [Terrain].
  final int x;

  /// Z-Index of this patch in the parent [Terrain].
  final int z;

  /// Side of this patch along X axis.
  final PatchSide xSide;

  /// Side of this patch along Z axis.
  final PatchSide zSide;
}

/// Patch side.
enum PatchSide {
  /// The [Patch] is located at the lower end of the [Terrain].
  negative,

  /// The [Patch] is located at the higher end of the [Terrain].
  positive,

  /// The [Patch] is located somewhere in the middle of the [Terrain].
  middle,
}

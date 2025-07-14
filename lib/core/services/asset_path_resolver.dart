enum AppAssetKey {
  profileImage,
  emptyState,
}

class AssetPathResolverService {
  static String resolve(AppAssetKey key) {
    switch (key) {
      case AppAssetKey.profileImage:
        return 'assets/images/img1.jpeg';
      case AppAssetKey.emptyState:
        return 'assets/images/empty_state.svg';
    }
  }

  static bool isSvg(AppAssetKey key) {
    return resolve(key).toLowerCase().endsWith('.svg');
  }
}

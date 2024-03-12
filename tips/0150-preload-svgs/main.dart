import 'package:flutter_svg/flutter_svg.dart';

Future<void> preloadSVGs(List<String> assetPaths) async {
  for (final path in assetPaths) {
    final loader = SvgAssetLoader(path);
    await svg.cache.putIfAbsent(
      loader.cacheKey(null),
      () => loader.loadBytes(null),
    );
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await preloadSVGs([
    'assets/icon_comment.svg',
    'assets/icon_info.svg',
    'assets/icon_link.svg',
  ]);
  runApp(const MainApp());
}

@override
Widget build(BuildContext context) {
  return SvgPicture.asset(
    'assets/icon_comment.svg',
    colorFilter: const ColorFilter.mode(
      Color(0xFF4999E9),
      BlendMode.srcIn,
    ),
  );
}

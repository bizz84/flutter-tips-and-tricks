// ⚠️ debugPrint prints in release mode ⚠️

void printSensitiveInfo() {
  // Don’t use print in release mode (it will show in the logs)
  print(Env.tmdbApiKey);
  // Don’t use debugPrint either! It will still show in the release logs ⚠️
  debugPrint(Env.tmdbApiKey);
}

// Easiest solution: use the logger package. This will print in debug mode, but not in release mode. 👍
final logger = Logger();
logger.d(Env.tmdbApiKey);



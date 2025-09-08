extension DurationExtensions on Duration {
  String toCode() {
    if (inMicroseconds % 1000 == 0) {
      if (inMilliseconds % 1000 == 0) {
        if (inSeconds % 60 == 0) {
          if (inMinutes % 60 == 0) {
            if (inHours % 24 == 0) {
              return 'Duration(days: $inDays)';
            }
            return 'Duration(hours: $inHours)';
          }
          return 'Duration(minutes: $inMinutes)';
        }
        return 'Duration(seconds: $inSeconds)';
      }
      return 'Duration(milliseconds: $inMilliseconds)';
    }
    return 'Duration(microseconds: $inMicroseconds)';
  }
}

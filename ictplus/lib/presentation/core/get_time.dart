import 'package:intl/intl.dart';

String getTime(String timestamp) {
  final DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

  String timeAgo(DateTime d) {
    final Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365) {
      return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    }
    if (diff.inDays > 30) {
      return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    }
    if (diff.inDays > 7) {
      return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    }
    if (diff.inDays > 0) {
      return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
    }
    return DateFormat('jm').format(d);
  }

  return timeAgo(dateTime);
}

String getTimeForum(String timestamp) {
  final DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

  String timeAgo(DateTime d) {
    final Duration diff = DateTime.now().difference(d);
    if (diff.inDays > 365) {
      return "${(diff.inDays / 365).floor()} ${(diff.inDays / 365).floor() == 1 ? "year" : "years"} ago";
    }
    if (diff.inDays > 30) {
      return "${(diff.inDays / 30).floor()} ${(diff.inDays / 30).floor() == 1 ? "month" : "months"} ago";
    }
    if (diff.inDays > 7) {
      return "${(diff.inDays / 7).floor()} ${(diff.inDays / 7).floor() == 1 ? "week" : "weeks"} ago";
    }
    if (diff.inDays > 0) {
      return "${diff.inDays} ${diff.inDays == 1 ? "day" : "days"} ago";
    }
    return 'at ${DateFormat('jm').format(d)}';
  }

  return timeAgo(dateTime);
}

String getDate(String timestamp) {
  final DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

  if (DateTime.now().year == dateTime.year &&
      DateTime.now().month == dateTime.month &&
      DateTime.now().day == dateTime.day) {
    return 'Today';
  } //E.g Today (if same day)

  else if (DateTime.now().year == dateTime.year) {
    return DateFormat('MMMd').format(dateTime);
  } //E.g July 9 (if same year as current)

  return DateFormat('MMM' ' ' 'd' ', ' 'y').format(dateTime);
  //E.g July 9, 2020 (if different year)
}

String getTimeExact(String timestamp) {
  final DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

  return DateFormat('jm').format(dateTime);
}

String getTimeOrDate(String timestamp) {
  final DateTime dateTime =
      DateTime.fromMillisecondsSinceEpoch(int.parse(timestamp));

  final Duration diff = DateTime.now().difference(dateTime);

  if (DateTime.now().year == dateTime.year &&
      DateTime.now().month == dateTime.month &&
      DateTime.now().day == dateTime.day) {
    return DateFormat('jm').format(dateTime);
  } //E.g 3.30pm (if same day)

  else if (diff.inDays < 7) {
    return DateFormat('EEE').format(dateTime); //E.g Tues (if within one week)
  } else if (DateTime.now().year == dateTime.year) {
    return DateFormat('d' '/' 'M').format(dateTime);
  } //E.g 9/7 (if same year as current)

  return DateFormat('d' '/' 'M' '/' 'y').format(dateTime);
  //E.g 9/7/2020 (if different year)
}

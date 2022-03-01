import 'package:intl/intl.dart';

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

String shorten_str(String s, int i) {
  if (s == null || s.isEmpty) {
    return "";
  } else {
    if (s.length < i) {
      return s;
    } else {
      return s.substring(0, i) + "...";
    }
  }
}

String get_ampm(String s) {
  if (s == null || s.isEmpty) {
    return "";
  } else if (s == "null") {
    return "";
  } else {
    String hr = s.substring(0, 2);
    String min = s.substring(3);
    int ihr = int.parse(hr);
    if (ihr > 12) {
      String nhr = (ihr - 12).toString();
      if (nhr.length > 1) {
        return nhr + ":" + min + "pm";
      } else {
        return "0" + nhr + ":" + min + "pm";
      }
    } else {
      return s + "am";
    }
  }
}

String convertToAgo(DateTime input) {
  Duration diff = DateTime.now().difference(input);

  if (diff.inDays == 1) {
    return '${diff.inDays} day ago';
  } else if (diff.inDays >= 1) {
    return '${diff.inDays} days ago';
  } else if (diff.inHours == 1) {
    return '${diff.inHours} hour ago';
  } else if (diff.inHours >= 1) {
    return '${diff.inHours} hours ago';
  } else if (diff.inMinutes == 1) {
    return '${diff.inMinutes} minute ago';
  } else if (diff.inMinutes >= 1) {
    return '${diff.inMinutes} minutes ago';
  } else if (diff.inSeconds == 1) {
    return '${diff.inSeconds} second ago';
  } else if (diff.inSeconds >= 1) {
    return '${diff.inSeconds} seconds ago';
  } else {
    return 'just now';
  }
}

DateTime parseFullDate(String s) {
  return new DateFormat("yyyy-MM-dd hh:mm:ss").parse(s);
}

String formatDate(String s) {
  DateTime dt = new DateFormat("yyyy-MM-dd hh:mm:ss").parse(s);
  // Formatted Date
  return DateFormat.yMMMEd().format(dt);
}

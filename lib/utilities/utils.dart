import 'package:intl/intl.dart';

class Utils{
  static String getImagePath(String name, {String format: 'png'}) {
    return 'assets/images/$name.$format';
  }

  static String getImageFeedbackPath(String name, {String format: 'png'}) {
    return 'assets/images/feedback/$name.$format';
  }

  static String getImageFeaturePath(String name, {String format: 'png'}) {
    return 'assets/images/feature_caris/$name.$format';
  }

  static String getIconPath(String name, {String format: 'svg'}) {
    return 'assets/icons/$name.$format';
  }

  static String formatDateDisplay(DateTime? date,
      {String format = 'dd/MM/yyyy'}) {
    if (date == null) return 'DD/MM/YYYY';
    var inputFormat = DateFormat(format);
    return inputFormat.format(date).toString();
  }
}


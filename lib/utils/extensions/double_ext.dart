import 'package:intl/intl.dart';

extension DoubleExt on double? {
  String? asFixed() => this?.toStringAsFixed(2);

  String get number {
    if (this == null) {
      return '0.00';
    } else {
      final NumberFormat format = NumberFormat('###,###,###,##0.00');
      return format.format(this);
    }
  }

  String numberWithLocale(String locale) {
    if (this == null) {
      return '0.00';
    } else {
      final NumberFormat format = NumberFormat('###,###,###,##0.00', locale);
      return format.format(this);
    }
  }
}

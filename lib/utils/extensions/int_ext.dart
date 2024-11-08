extension IntExt on int {
  Duration get asDays => Duration(days: this);

  Duration get asHours => Duration(hours: this);

  Duration get asMinutes => Duration(minutes: this);

  Duration get asSeconds => Duration(seconds: this);

  Duration get asMilliseconds => Duration(milliseconds: this);

  Duration get asMicroseconds => Duration(microseconds: this);
}

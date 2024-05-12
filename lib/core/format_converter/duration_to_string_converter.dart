class DurationToStringConverter{
  static String convert(Duration duration){
    final time = duration.toString().split('.').first;
    final hourMinut = time.split(':');
    final myTime = '${hourMinut[0]}.${hourMinut[1]}';
    return myTime;
  }
}
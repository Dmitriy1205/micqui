String? separateFirstName(String? fullName) {
  if (fullName == null) {
    return null;
  }
  final indexOfSpace = fullName.indexOf(' ');
  if (indexOfSpace >= 0) {
    return fullName.substring(0, indexOfSpace);
  } else {
    return fullName;
  }
}
String? separateLastName(String? fullName) {
  if (fullName == null) {
    return null;
  }
  final indexOfSpace = fullName.indexOf(' ');
  if (indexOfSpace >= 0) {
    return fullName.substring(indexOfSpace + 1);
  } else {
    return fullName;
  }
}

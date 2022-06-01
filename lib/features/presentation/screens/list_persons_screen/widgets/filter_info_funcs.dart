String statusInfo(bool isAlive, bool dead, bool unknown) {
  if (isAlive) {
    return "Alive";
  } else if (dead) {
    return "Dead";
  } else if (unknown) {
    return "unknown";
  } else {
    return "";
  }
}

String genderInfo(bool female, bool male, bool genderless, bool unknownGender) {
  if (female) {
    return "Female";
  } else if (male) {
    return "Male";
  } else if (genderless) {
    return "Genderless";
  } else if (unknownGender) {
    return "unknown";
  } else {
    return "";
  }
}

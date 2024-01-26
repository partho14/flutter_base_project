enum Languages {
  en,
  bn,
}

Languages getLanguageFromString(String value) {
  if (value == Languages.bn.name) {
    return Languages.bn;
  }
  return Languages.en;
}
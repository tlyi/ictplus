List<String> createKeywords(String component) {
  List<String> arrName = [];
  var curName = '';
  component.split('').forEach((letter) {
    curName += letter;
    arrName.add(curName);
  });
  return arrName;
}

List<String> generateKeywords(String title) {
  List<String> components = [title];
  title.split(" ").forEach((component) {
    components.add(component);
  });
  List<String> manyComponents = [];

  for (final component in components) {
    manyComponents.addAll(createKeywords(component));
  }
  return manyComponents;
}

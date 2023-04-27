class MapImplementation {
  final Map<String, Object> userInfo;

  MapImplementation({required this.userInfo});

  addUserInfo(String key, Object value) =>
      userInfo.putIfAbsent(key, () => value);

  updateUserInfo(String key, String updatedValue) =>
      userInfo.update(key, (value) => updatedValue);

  updateUserInfoWithIfAbsent(String key, Object value) =>
      userInfo.update(key, (mapValue) => value, ifAbsent: () => value);

  printAllUserInfoValue() => userInfo.forEach((key, value) {
        print("$key : $value");
      });

  printSelectedValue(String key) {
    if (userInfo.containsKey(key)) {
      userInfo.forEach((mapKey, value) {
        if (key == mapKey) {
          print(value);
          return;
        }
      });
    } else {
      print(
          "The key $key is not added in the map, use the addUserInfo(key,value) to add this in the map");
    }
  }

  printAllExcept(Object value) {
    if (userInfo.isNotEmpty) {
      for (Object mapValue in userInfo.values) {
        if (value != mapValue) {
          print(mapValue);
        }
      }
    } else {
      print("The map is currently empty!");
    }
  }
}

import 'package:get_storage/get_storage.dart';

class TLocalStorage{

  //✅ What this code is doing overall:
  // This creates a special kind of class called a singleton.
  // A singleton is a class that only has one single instance in the whole app.
  // That way, you can easily access and share the same object everywhere.
  //
  // In this case, it’s for local storage.
  //TLocalStorage._internal() is a private constructor used to create this instance (more on this in a moment).
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();//here we are creating a private constructor. we can use _internal or any word but it have
  //to be same with TLocalStorage._internal()here

  final _storage = GetStorage();

  //generic method to save data
  Future saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }

  //generic method to read data
  T readData<T> (String key) {
    return _storage.read(key);
  }

  //generic method to remove data
  Future removeData(String key) async {
    await _storage.remove(key);
  }

  //clear all the data from storage
  Future clearStorage() async {
    await _storage.erase();
  }

}
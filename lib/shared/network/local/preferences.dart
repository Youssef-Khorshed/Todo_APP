import 'package:shared_preferences/shared_preferences.dart';

class Preference{

  static SharedPreferences? preferences;
  static   intial() async{
    preferences = await SharedPreferences.getInstance();
  }
  static  put({required String key, required value})
  async{
      await    preferences!.setBool(key, value);
  }
  static bool? get ({required String key})
  {
   return preferences?.getBool(key);
  }
}
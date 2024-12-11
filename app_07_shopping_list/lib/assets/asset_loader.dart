import 'dart:convert';
import 'package:flutter/services.dart'; // rootBundle for asset loading

class AssetLoader {
  // A generic method to load JSON files from assets
  Future<Map<String, dynamic>> loadJson(String filePath) async {
    try {
      final String configString = await rootBundle.loadString(filePath);
      final Map<String, dynamic> config = jsonDecode(configString);
      return config; // Return the loaded JSON as a Map
    } catch (e) {
      print('Error loading asset: $e');
      rethrow; // Re-throw the error if needed
    }
  }

  // A specific method to load the Firebase URL from the config.json (you can extend this for more specific cases)
  Future<String?> loadFirebaseUrl() async {
    final Map<String, dynamic> config = await loadJson('assets/config.json');
    return config['firebaseUrl']; // Return the firebaseUrl from the loaded JSON
  }
}

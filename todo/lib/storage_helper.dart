import 'dart:io';
import 'package:path_provider/path_provider.dart';

class StorageHelper {

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> _getLocalFile(String filename) async {
    final localPath = await _localPath;
    return File("$localPath/$filename");
  }

  Future<File> writeToFile(String filename, String content) async {
    final file = await _getLocalFile(filename);
    return file.writeAsString(content);
  }

  Future<String> readFromFile(String filename) async {
    try{
      final file = await _getLocalFile(filename);
      return file.readAsString();
    }
    catch(e) {
      return "\\0";
    }
  }

}

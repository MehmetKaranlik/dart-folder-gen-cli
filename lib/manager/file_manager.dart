import 'dart:io';

class FileManager {
  final String moduleName;

  FileManager({required this.moduleName});

  Future<void> createFolder(String path, {String? alternative}) async {
    File('$path/${alternative ?? moduleName}').create(recursive: true).catchError((e) {
      print("Unexpected Error :$e");
    });
  }

  Future<Directory> createDir(String path, String name) async {
    return Directory('$path/$name').create(recursive: true).catchError((e) {
      print("Unexpected Error :$e");
    });
  }
}

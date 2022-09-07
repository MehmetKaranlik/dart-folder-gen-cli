import 'dart:io';

import 'package:dart_folder_gen_cli/manager/file_manager.dart';
import 'package:dart_folder_gen_cli/object/enum/messages.dart';
import 'package:dart_folder_gen_cli/object/enum/modules.dart';
import 'package:dart_folder_gen_cli/utils/extensions/prompts_extensions.dart';
import 'package:dart_folder_gen_cli/utils/prompts.dart';

class ModuleManager extends FileManager {
  final String? path;
  List<Modules> folders = [];

  ModuleManager({required this.path, required super.moduleName});

  Future<void> createModule() async {
    if (path == null) {
      Prompt(Messages.nullError).printOut();
      return;
    }

    final newDir = await createDir(path!, moduleName);
    folders.addAll(Modules.values);
    if (folders.isNotEmpty) {
      _generateFolders(newDir);
    }
  }

  Future<void> _generateFolders(Directory directory) async {
    await Future.wait(folders.map((subModule) async {
      final subDir = await createDir(directory.path, subModule.name);
      _skip(subModule) ? createFolder(subDir.path, alternative: subModule.toName(moduleName)) : null;
    }));
  }

  bool _skip(Modules module) {
    return module != Modules.model && module != Modules.module;
  }
}

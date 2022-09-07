import 'index.dart';

void main(List<String> arguments) async {
  Prompt(Messages.description).printOut();
  final String? moduleName = stdin.readLineSync();

  Prompt(Messages.descriptionSecondary).printOut();
  final String? folderPath = stdin.readLineSync();

  await ModuleManager(path: folderPath, moduleName: moduleName ?? '').createModule();
}

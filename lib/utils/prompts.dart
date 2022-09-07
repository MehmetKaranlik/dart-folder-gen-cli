import 'package:dart_folder_gen_cli/object/enum/messages.dart';

class Prompt {
  final Messages promptType;

  Prompt(this.promptType);

  String showPrompt() {
    return """
-------------------------------------
${promptType.message}
-------------------------------------
    """;
  }
}

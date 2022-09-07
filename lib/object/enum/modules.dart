enum Modules {
  view,
  service,
  model,
  cubit,
  module;

  String toName(String moduleName) {
    switch (this) {
      case Modules.view:
        return "${moduleName}_view.dart";

      case Modules.service:
        return "${moduleName}_service.dart";

      case Modules.model:
        return "${moduleName}_model.dart";

      case Modules.cubit:
        return "${moduleName}_cubit.dart";

      case Modules.module:
        return "${moduleName}_module.dart";
    }
  }
}

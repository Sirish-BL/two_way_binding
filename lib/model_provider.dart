import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:two_way_binding/app_model.dart';




// InheritedWidgets allow you to propagate values down the Widget Tree.
// it can then be accessed by just writing  TheViewModel.of(context)
class ModelProvider extends InheritedWidget {
  final AppModel model;

  const ModelProvider({Key key, @required this.model, @required Widget child})
      : assert(model != null),
        assert(child != null),
        super(key: key, child: child);

  static AppModel of(BuildContext context) =>
      (context.inheritFromWidgetOfExactType(ModelProvider) as ModelProvider)
          .model;

  @override
  bool updateShouldNotify(ModelProvider oldWidget) => model != oldWidget.model;
}

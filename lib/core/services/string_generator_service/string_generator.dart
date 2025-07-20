import 'package:analyzer/dart/element/element2.dart';
import 'package:build/build.dart';
import 'package:portfolio_final/core/constants/strings.dart';
import 'package:source_gen/source_gen.dart';

class AutoStringGenerator extends GeneratorForAnnotation<AutoString> {
  @override
  generateForAnnotatedElement(
    Element2 element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! EnumElement2) {
      return null;
    }

    final enumName = element.displayName;
    final buffer = StringBuffer();

    buffer.writeln('extension ${enumName}X on $enumName {');
    buffer.writeln('  String get label {');
    buffer.writeln('    switch (this) {');

    for (final field in element.children2.where((f) => !f.isSynthetic)) {
      final valueName = field.displayName;
      final label = _toLabel(valueName);
      buffer.writeln('      case $enumName.$valueName: return \'$label\';');
    }

    buffer.writeln('    }');
    buffer.writeln('  }');
    buffer.writeln('}');

    return buffer.toString();
  }

  String _toLabel(String key) {
    final spaced = key.replaceAllMapped(RegExp(r'([a-z])([A-Z])'), (m) => '${m[1]} ${m[2]}');
    final titleCase = spaced.replaceAll('_', ' ').split(' ').map((w) {
      if (w.isEmpty) {
        return w;
      }
      return '${w[0].toUpperCase()}${w.substring(1)}';
    }).join(' ');
    return titleCase;
  }
}

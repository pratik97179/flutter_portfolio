import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:portfolio_final/core/services/string_generator_service/string_generator.dart';

Builder autoStringBuilder(BuilderOptions options) =>
    LibraryBuilder(AutoStringGenerator());

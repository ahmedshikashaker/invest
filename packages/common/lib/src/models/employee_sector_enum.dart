import 'package:common_dependencies/common_dependencies.dart';

enum EmploymentSector {
  @JsonValue("PRIVATE")
  private,
  @JsonValue("GOVERNMENT")
  government,
  @JsonValue("RETIRED")
  retired,
}

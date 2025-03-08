import 'package:common_dependencies/common_dependencies.dart';
import 'package:onboarding/src/config/router/onboarding_module_routers.gm.dart';
import 'package:onboarding/src/features/data/models/section.dart';
import 'package:onboarding/src/features/data/models/step.dart';

@injectable
class NavigationDoublyLinkedListBuilder {
  PageRouteInfo buildNavigation(Step step) {
    final sections = step.sections;
    final startIndex = _getStartIndex(step.currentSectionId, sections);
    return _buildForwardLinkedList(sections, startIndex, startIndex, step);
  }

  PageRouteInfo _buildForwardLinkedList(
      List<Section> sections, int currentIndex, int startIndex, Step step) {
    if (currentIndex >= sections.length) {
      throw Exception('Invalid section index: $currentIndex');
    }

    final nextRoute = currentIndex < sections.length - 1
        ? _buildForwardLinkedList(sections, currentIndex + 1, startIndex, step)
        : null;

    return KiSectionRoute(
        section: sections[currentIndex],
        previousRoute: currentIndex > startIndex
            ? _buildBackwardLinkedList(
                sections, currentIndex - 1, nextRoute, startIndex, step)
            : null,
        nextRoute: nextRoute,
        stepTitle: step.title,
        stepRank: step.stepLabel);
  }

  PageRouteInfo _buildBackwardLinkedList(List<Section> sections,
      int currentIndex, PageRouteInfo? nextRoute, int startIndex, Step step) {
    return KiSectionRoute(
        section: sections[currentIndex],
        previousRoute: currentIndex > 0
            ? _buildBackwardLinkedList(
                sections, currentIndex - 1, nextRoute, startIndex, step)
            : null,
        nextRoute: nextRoute,
        stepTitle: step.title,
        stepRank: step.stepLabel);
  }

  int _getStartIndex(String? currentSectionId, List<Section> sections) {
    if (currentSectionId == null) return 0;
    final index = sections.indexWhere((s) => s.id == currentSectionId);
    if (index == -1) throw Exception('Invalid section ID: $currentSectionId');
    return index;
  }
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:max_sports/core/utils/navbar_item.dart';

part 'navigation_state.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class NavigationState with _$NavigationState {
  const NavigationState._();

  factory NavigationState.initial() = NavigationStateInitial;

  factory NavigationState.getNavbarItem({
    required NavbarItem item,
    required int index,
  }) = NavigationStateGetNavbarItem;
}

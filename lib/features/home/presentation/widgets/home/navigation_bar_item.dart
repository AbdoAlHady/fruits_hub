import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/entities/navigation_bar_entity.dart';
import 'package:fruits_hub/features/home/presentation/widgets/home/active_navigation_bar_item.dart';
import 'package:fruits_hub/features/home/presentation/widgets/home/in_active_botton_navigaton_bar_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isActiveIcon,
      required this.navigationBarEntity});
  final bool isActiveIcon;
  final NavigationBarEntity navigationBarEntity;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      firstChild: ActiveNavigationBarItem(
        name: navigationBarEntity.name,
        image: navigationBarEntity.activeImage,
      ),
      secondChild: InActiveBottonNavigatonBarItem(
        image: navigationBarEntity.inActiveImage,
      ),
      crossFadeState:
          isActiveIcon ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      duration: Duration(milliseconds: 200),
    );
  }
}

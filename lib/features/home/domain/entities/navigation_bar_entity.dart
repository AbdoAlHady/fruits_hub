import 'package:fruits_hub/core/utils/app_images.dart';

class NavigationBarEntity {
  final String name;
  final String activeImage, inActiveImage;

  NavigationBarEntity(
      {required this.name,
      required this.activeImage,
      required this.inActiveImage});
}

List<NavigationBarEntity> navigationBarItems = [
  NavigationBarEntity(
      name: 'الرئيسية',
      activeImage: AppImages.imagesHomeBoild,
      inActiveImage: AppImages.imagesHomeOutlined),
  NavigationBarEntity(
      name: 'المنتجات',
      activeImage: AppImages.imagesProductsBoild,
      inActiveImage: AppImages.imagesProductsOutlined),
  NavigationBarEntity(
      name: 'سلة التسوق',
      activeImage: AppImages.imagesShoppingCartBoild,
      inActiveImage: AppImages.imagesShoppingCartOutlined),
  NavigationBarEntity(
      name: 'حسابي',
      activeImage: AppImages.imagesProfileBoild,
      inActiveImage: AppImages.imagesProfileOutlined),
];

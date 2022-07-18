
import 'package:school_erp/config/app_image.dart';

class MenuModel{
  MenuModel({
    this.name,
    this.image,
  });
  String? name;
  String? image;

  factory MenuModel.fromJson(Map<String, dynamic> json) => MenuModel(
    name: json['name'],
    image: json['icon'],
  );
}

List<MenuModel> getList(){
  List<MenuModel> menuList = <MenuModel>[];
  MenuModel menuModel = MenuModel();

  menuModel.name = 'Play Quiz';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'Assignment';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  menuModel.name = 'School Holiday';
  menuModel.image = AppImages.icon_assignment;
  menuList.add(menuModel);
  menuModel = MenuModel();

  return menuList;
}
// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'servicespagetwogrid_item_model.dart';

/// This class defines the variables used in the [services_page_two_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ServicesPageTwoModel extends Equatable {
  ServicesPageTwoModel({this.servicespagetwogridItemList = const []}) {}

  List<ServicespagetwogridItemModel> servicespagetwogridItemList;

  ServicesPageTwoModel copyWith(
      {List<ServicespagetwogridItemModel>? servicespagetwogridItemList}) {
    return ServicesPageTwoModel(
      servicespagetwogridItemList:
          servicespagetwogridItemList ?? this.servicespagetwogridItemList,
    );
  }

  @override
  List<Object?> get props => [servicespagetwogridItemList];
}

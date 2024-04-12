import 'package:app/shared/ui/ui_helpers.dart';
import 'package:app/widgets/onboarding-screen/custom_bottom_navigator_bar_widget.dart';
import 'package:app/widgets/onboarding-screen/custom_search_bar_widget.dart';
import 'package:app/widgets/onboarding-screen/list_view_builder_products_widget.dart';
import 'package:app/widgets/product/products/list_view_builder_categories_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: const CustomBottomNavigatorBar(),
        body: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              const SizedBox(
                height: kVerticalSpaceSmall,
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/arrow-left.svg',
                        width: 25,
                        height: 25,
                      )),
                  const CustomSearchBar(),
                ],
              ),
              Container(
                constraints: const BoxConstraints(maxHeight: 45),
                padding: const EdgeInsets.only(
                  top: kVerticalSpaceSmall,
                ),
                child: const ListViewBuilderCategories(),
              ),
              // ListViewProducts(),
            ],
          ),
        ),
      ),
    );
  }
}

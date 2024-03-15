import 'package:auto_route/auto_route.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/core/config/themes/app_fonts.dart';
import 'package:eco_shop/core/utils/resources/resources.dart';
import 'package:eco_shop/features/widgets/bag_item.dart';
import 'package:eco_shop/features/widgets/custom_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

@RoutePage()
class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Row(
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Очистить",
                        style: AppFonts.s18w500.copyWith(color: AppColors.red),
                      )),
                  const SizedBox(
                    width: 53,
                  ),
                  Text(
                    "Корзина",
                    style:
                        AppFonts.s18w500.copyWith(color: AppColors.fontColor),
                  )
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Expanded(
                child: ListView(
                  children: const [
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                    BagItem(),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Сумма",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.articleColor),
                      ),
                      Text(
                        "396 с",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.fontColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Доставка",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.articleColor),
                      ),
                      Text(
                        "150 с",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.fontColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Итого",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.articleColor),
                      ),
                      Text(
                        "546 с",
                        style: AppFonts.s16w500
                            .copyWith(color: AppColors.fontColor),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 156,
                  ),
                  CustomBtn(onPressed: () {}, title: "Оформить заказ"),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

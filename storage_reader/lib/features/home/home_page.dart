import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storage_reader/app/constants/colors.dart';
import 'package:storage_reader/app/widgets/button.dart';
import 'package:storage_reader/app/widgets/title_appbar.dart';
import 'package:storage_reader/features/product/data/product_model.dart';
import 'package:storage_reader/features/product/presentation/cubit/product_cubit.dart';
import 'package:storage_reader/features/product/presentation/product_page.dart';
import 'package:storage_reader/features/qrcode/presentation/qrcode_page.dart';
import 'package:storage_reader/features/shop/data/shop_model.dart';
import 'package:storage_reader/features/shop/presentation/cubit/shop_cubit.dart';
import 'package:storage_reader/features/shop/presentation/shop_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 19),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleAppBar(),
                const SizedBox(height: 60),
                Container(
                  width: double.infinity,
                  height: 170,
                  padding: EdgeInsets.all(22),
                  decoration: BoxDecoration(
                      color: AppColors.lightGray,
                      borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Scan Qr Code",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "Press the Scan button to start capturing QR codes",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                Center(
                  child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.6,
                      child: Image.asset('assets/images/qr_background.png')),
                ),
                const SizedBox(height: 70),
                Center(
                  child: SizedBox(
                      width: 160,
                      child: CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => QRViewPage()))
                              .then((value) {
                            if (value.contains("product")) {
                              BlocProvider.of<ProductCubit>(context)
                                  .getProduct(value);

                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ProductPage()));
                            }
                            if (value.contains("shop")) {
                              BlocProvider.of<ShopCubit>(context)
                                  .getShop(value);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ShopPage()));
                            }
                          });
                        },
                        title: "Scan",
                        borderRadius: 22,
                        buttonColor: AppColors.mainblue,
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:storage_reader/app/constants/colors.dart';
import 'package:storage_reader/app/widgets/button.dart';
import 'package:storage_reader/app/widgets/title_appbar.dart';

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
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Image.asset('assets/images/qr_background.png')),
                ),
                const SizedBox(height: 70),
                Center(
                  child: SizedBox(
                      width: 160,
                      child: CustomElevatedButton(
                        onPressed: () {},
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

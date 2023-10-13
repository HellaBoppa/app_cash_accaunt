import 'package:app_kash_application/app/ui/pages/auch/accaunt_page.dart';
import 'package:app_kash_application/app/ui/utils/colors.dart';
import 'package:app_kash_application/app/ui/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(18),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.to(const AccauntPage());
                            },
                            child: Image.asset(
                              'assets/page-1/images/button.png',
                              width: 34,
                              height: 34,
                            ),
                          ),
                          const SizedBox(width: 10),
                          InkWell(
                            onTap: () {
                              Get.to(const AccauntPage());
                            },
                            child: Text(
                              // titleFHh (I1:403;1:114)
                              'Кирилл',
                              style: SafeGoogleFont(
                                'SF Pro Display',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 1.2,
                                letterSpacing: 0.3799999952,
                                color: textSmallColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: width * 0.1),
                    Expanded(
                      child: Image.asset(
                        'assets/page-1/images/bell-2.png',
                        width: 20,
                        height: 21,
                        color: textSmallColor,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Баланс кошелька ImPay',
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.25,
                          letterSpacing: -0.3199999928,
                          color: textSmallColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        // 91H (I1:402;1:102)
                        '5 485,67 ₽',
                        textAlign: TextAlign.right,
                        style: SafeGoogleFont(
                          'SF Pro Display',
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.25,
                          letterSpacing: -0.3199999928,
                          color: textSmallColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                TextFormField(
                    style: const TextStyle(color: textSmallColor),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: fillColor,
                      hintText: 'Поиск',
                      hintStyle: SafeGoogleFont(
                        'SF Pro Display',
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333,
                        letterSpacing: -0.2399999946,
                        color: textSmallColor,
                      ),
                      suffixIcon: Image.asset(
                        'assets/page-1/images/x-base-cell-content-right.png',
                        cacheHeight: 22,
                        cacheWidth: 22,
                      ),
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: fillColor)),
                      focusedBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: fillColor),
                      ),
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: height,
            padding: const EdgeInsets.all(16.0),
            decoration: const BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'ИЗБРАННОЕ',
                    style: SafeGoogleFont(
                      'SF Pro Display',
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      height: 1.2857142857,
                      letterSpacing: 1,
                      color: infoTextColor,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print('Мои платежи');
                        },
                        child: Container(
                          width: 82,
                          height: 90,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: textSmallColor,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 0.3,
                                  color: infoTextColor,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/page-1/images/frame-242-w3d.png',
                                height: 24,
                              ),
                              Text(
                                'Мои платежи',
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2727272727,
                                  letterSpacing: 0.0599999987,
                                  color: textContColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print('Билеты');
                        },
                        child: Container(
                          width: 82,
                          height: 90,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: textSmallColor,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 0.3,
                                  color: infoTextColor,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/page-1/images/frame-242.png',
                                height: 30,
                              ),
                              Text(
                                'Мои билеты',
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2727272727,
                                  letterSpacing: 0.0599999987,
                                  color: textContColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print('Карта лояльности');
                        },
                        child: Container(
                          width: 82,
                          height: 90,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: textSmallColor,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 0.3,
                                  color: infoTextColor,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/page-1/images/frame-242-yts.png',
                                height: 30,
                              ),
                              Text(
                                'Карта лояльности',
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2727272727,
                                  letterSpacing: 0.0599999987,
                                  color: textContColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          print('QR Code');
                        },
                        child: Container(
                          width: 82,
                          height: 90,
                          padding: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(14),
                              color: textSmallColor,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 4,
                                  spreadRadius: 0.3,
                                  color: infoTextColor,
                                )
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/page-1/images/frame-242-Ldm.png',
                                height: 30,
                              ),
                              Text(
                                'QR-code',
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 9,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2727272727,
                                  letterSpacing: 0.0599999987,
                                  color: textContColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: width * 0.03),
                  ],
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'НОВОСТИ',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 1.2857142857,
                            letterSpacing: 1,
                            color: infoTextColor,
                          ),
                        ),
                        Image.asset(
                          'assets/page-1/images/vector-34.png',
                          width: 27,
                          height: 18,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/page-1/images/mask-group3232.png'),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюсь бонусы на счёт.',
                            style: SafeGoogleFont('SF Pro Display',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.2857142857,
                                letterSpacing: -0.1539999992,
                                color: textSmallColor),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/page-1/images/mask-group3232.png'),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'При заказе одной кружки кофе Вы получите 20 бонусов на счет.',
                            style: SafeGoogleFont('SF Pro Display',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.2857142857,
                                letterSpacing: -0.1539999992,
                                color: textSmallColor),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/page-1/images/mask-group3232.png'),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюсь бонусы на счёт.',
                            style: SafeGoogleFont('SF Pro Display',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.2857142857,
                                letterSpacing: -0.1539999992,
                                color: textSmallColor),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/page-1/images/mask-group3232.png'),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'При заказе одной кружки кофе Вы получите 20 бонусов на счет.',
                            style: SafeGoogleFont('SF Pro Display',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.2857142857,
                                letterSpacing: -0.1539999992,
                                color: textSmallColor),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      Container(
                        padding: EdgeInsets.all(12),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(
                                'assets/page-1/images/mask-group3232.png'),
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Суперакция от Веккер Закажи окно до конца сентября и получи мегаскидку плюсь бонусы на счёт.',
                            style: SafeGoogleFont('SF Pro Display',
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                height: 1.2857142857,
                                letterSpacing: -0.1539999992,
                                color: textSmallColor),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}

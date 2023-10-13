import 'package:app_kash_application/app/ui/utils/colors.dart';
import 'package:app_kash_application/app/ui/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccauntPage extends StatelessWidget {
  const AccauntPage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: backgroundColorScaffold,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 30, left: 18, right: 18),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Image.asset(
                            'assets/page-1/images/vector-21.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Профиль',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                            letterSpacing: 0.3799999952,
                            color: textContColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: width * 0.3),
                  Expanded(
                    child: Image.asset(
                      'assets/page-1/images/auto-group-czj7.png',
                      width: 21,
                      height: 25,
                      color: textSmallColor,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: height,
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: const BoxDecoration(
                  color: containerColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'assets/page-1/images/mask-group.png',
                            width: 95,
                            height: 95,
                          ),
                          SizedBox(
                            height: height * 0.01,
                          ),
                          Text(
                            'Васильков Кирилл Александрович ',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.25,
                              letterSpacing: -0.3199999928,
                              color: textContColor,
                            ),
                          ),
                          SizedBox(height: height * 0.005),
                          Text(
                            '+7 922 123 45 67',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'SF Pro Display',
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              height: 1.2307692308,
                              letterSpacing: -0.0780000016,
                              color: textContColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Container(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont(
                                      'SF Pro Display',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      letterSpacing: -0.3199999928,
                                      color: backgroundColorScaffold,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: '1 485,67 ',
                                      ),
                                      TextSpan(
                                        text: '₽',
                                        style: SafeGoogleFont(
                                          'SF Pro Display',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          height: 1,
                                          letterSpacing: -0.3199999928,
                                          color: infoTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'Кошелек ImPay',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  letterSpacing: -0.2399999946,
                                  color: infoTextColor,
                                ),
                              ),
                            ],
                          ),
                          const VerticalDivider(
                            width: 20,
                            thickness: 2,
                            endIndent: 0,
                            color: Colors.black,
                          ),
                          Column(
                            children: [
                              Container(
                                child: RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    style: SafeGoogleFont(
                                      'SF Pro Display',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      height: 1,
                                      letterSpacing: -0.3199999928,
                                      color: backgroundColorScaffold,
                                    ),
                                    children: [
                                      const TextSpan(
                                        text: '5 485,67 ',
                                      ),
                                      TextSpan(
                                        text: '₽',
                                        style: SafeGoogleFont(
                                          'SF Pro Display',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600,
                                          height: 1,
                                          letterSpacing: -0.3199999928,
                                          color: infoTextColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                'Накопленно бонусов',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'SF Pro Display',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  height: 1.25,
                                  letterSpacing: -0.2399999946,
                                  color: infoTextColor,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        Image.asset(
                          'assets/page-1/images/auto-group-o9gk.png',
                          width: 24,
                          height: 24,
                        ),
                        const SizedBox(width: 20),
                        Text(
                          'Мои данные',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                            letterSpacing: 0.3799999952,
                            color: infoTextColor,
                          ),
                        ),
                        SizedBox(width: width * 0.45),
                        Expanded(
                          child: Image.asset(
                            'assets/page-1/images/vector-34.png',
                            width: 16,
                            height: 19,
                            color: infoTextColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.05),
                    Row(
                      children: [
                        Image.asset(
                          'assets/page-1/images/auto-group-hnpy.png',
                          width: 24,
                          height: 24,
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          'Помощь',
                          style: SafeGoogleFont(
                            'SF Pro Display',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            height: 1.2,
                            letterSpacing: 0.3799999952,
                            color: infoTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

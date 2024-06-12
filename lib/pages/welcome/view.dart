import 'package:chatl1/pages/welcome/controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          width: 360.w,
          height: 780.w,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                onPageChanged: (index) {
                  // Logique de changement de page si nécessaire
                },
                controller: PageController(
                  initialPage: 0,
                  keepPage: false,
                  viewportFraction: 1,
                ),
                pageSnapping: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/banner1.png'),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/banner2.png'), // Assurez-vous d'avoir une autre image pour la deuxième page
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/banner3.png'), // Assurez-vous d'avoir une autre image pour la deuxième page
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          child: ElevatedButton(
                            onPressed: () => null,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              foregroundColor: MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)

                              )),
                                side: MaterialStateProperty.all(
                                  const BorderSide(color: Colors.white)
                                )
                            ),
                            child: Text("Login"),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    ;
  }
}

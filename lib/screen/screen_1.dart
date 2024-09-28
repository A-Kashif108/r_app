import 'package:app_1/app_bar.dart';
import 'package:app_1/button/r_button.dart';
import 'package:app_1/card/balance_card.dart';
import 'package:app_1/card/r_card.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Color(0xff212121),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    color: Color(0xfffff7df),
                  ),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: 80,
            left: 28,
            right: 28,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RAppBar(),
                  const SizedBox(height: 20),
                  BalanceCard(),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RButton(
                        height: 50,
                        width: 120,
                        onPressed: () {},
                        borderColor: Colors.black,
                        color: Color(0xfff8f7fe),
                        borderRadius: BorderRadius.circular(14),
                        child: Center(
                          child: Text(
                            'Setup SIP',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 25),
                      RButton(
                        height: 50,
                        width: 120,
                        onPressed: () {},
                        borderColor: Colors.black,
                        color: Color(0xfff8f7fe),
                        borderRadius: BorderRadius.circular(14),
                        child: Center(
                          child: Text(
                            'Bank accounts',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    'Curie\'s Knowledge bank',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: RCard(
                            height: 150,
                            width: 100,
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                            borderColor: Colors.black,
                            shadowColor: Colors.black,
                            bgImageProvider: NetworkImage(
                              'https://picsum.photos/200/300',
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:app_1/button/r_button.dart';
import 'package:app_1/card/r_card.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        RCard(
            borderRadius: BorderRadius.circular(23),
            borderWidth: 2,
            shadowOffset: const Offset(12, 10),
            shadowColor: Colors.black,
            color: Colors.white,
            borderColor: Colors.black,
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '₹ 1000',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // all time gains
                      Text(
                        'All time gains:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '₹ 100',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  // past 1-year CAGR
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Past 1-year CAGR:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      Spacer(),
                      Text(
                        '10%',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 4),
                      Icon(
                        Icons.info_outline,
                        color: Colors.black,
                        size: 15,
                        weight: 120,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ),
        Positioned(
          bottom: -20,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             RButton(
               height: 45,
               width: 100,
               onPressed: (){},
               color: Color(0xff33ff91),
               shadowColor: Colors.black,
               borderRadius: BorderRadius.circular(12),
               shadowOffset: const Offset(8, 5),
               borderColor: Colors.white,
               child: Center(
                 child: Text(
                   'Add Money',
                   style: TextStyle(
                     color: Colors.black,
                     fontSize: 15,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ),
             const SizedBox(width: 20),
             // scan and pay
              RButton(
                height: 45,
                width: 100,
                onPressed: (){},
                color: Colors.white,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.circular(12),
                shadowOffset: const Offset(8, 5),
                borderColor: Colors.black,
                child: Center(
                  child: Text(
                    'Scan & Pay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}

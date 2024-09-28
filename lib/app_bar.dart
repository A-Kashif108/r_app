import 'package:app_1/card/r_card.dart';
import 'package:flutter/material.dart';

class RAppBar extends StatelessWidget {
  const RAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RCard(
            height: 50,
            width: 50,
            borderRadius: BorderRadius.circular(8),
            shadowOffset: const Offset(4, 2),
            color: Colors.grey,
            borderColor: Colors.black,
            shadowColor: Colors.black,
            bgImageProvider: NetworkImage(
                'https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
            Text(
              'hey',
              style: TextStyle(
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontSize: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'John!',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '9876543210@curieyesbank',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                      
                    ),
                      const SizedBox(width: 10),
                      Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                  ],
                ),
              ],
            ),
                      ],
                    ),
          ),
           
        ],
      ),
    );
  }
}

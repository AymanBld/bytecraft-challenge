import 'package:bytecraft_challeng/constants.dart';
import 'package:bytecraft_challeng/widgets/my_button.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            height: MediaQuery.of(context).size.height / 2,
            clipBehavior: Clip.hardEdge,
            child: Image.asset(
              fit: BoxFit.cover,
              'assets/images/background 1.png',
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 33),
                  child: Text.rich(
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Blk Bt Black',
                    ),
                    TextSpan(
                      children: [
                        TextSpan(text: 'Life is short and the world is '),
                        TextSpan(
                          text: 'wide',
                          style: TextStyle(
                            color: Colors.orange,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 36),
                  child: Text(
                    'At Friends tours and travel, we customize reliable and trutworthy educational tours to destinations all over the world',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400, fontFamily: 'Gill Sans'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 7,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.firstcolore,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 7,
                      width: 15,
                      decoration: BoxDecoration(
                        color: AppColors.firstcolore.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 7,
                      width: 15,
                      decoration: BoxDecoration(
                        color: AppColors.firstcolore.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: MyButton(
                    text: 'Get Started',
                    onTap: () {
                      Navigator.pushNamed(context, 'screen2');
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

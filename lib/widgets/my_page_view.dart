import 'dart:math';
import 'package:bytecraft_challeng/constants.dart';
import 'package:bytecraft_challeng/widgets/my_button.dart';
import 'package:flutter/material.dart';

class MySlider extends StatelessWidget {
  const MySlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController ctrl = PageController(viewportFraction: 0.9);
    return SizedBox(
      height: 200,
      child: PageView.builder(
        controller: ctrl,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xff3e3e3e).withOpacity(0.9),
          ),
          child: Column(
            children: [
              const Row(children: [
                Text(
                  'Niladri Reservoir',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Spacer(),
                Text(
                  '4.5',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                )
              ]),
              const Spacer(flex: 2),
              Row(
                children: [
                  const Icon(
                    Icons.location_on_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'Tekergat, Sunamgnj',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 65,
                    height: 25,
                    child: Stack(
                      children: List.generate(
                        5,
                        (index) => Positioned(
                          left: 10 * index.toDouble(),
                          child: index == 4
                              ? const CircleAvatar(
                                  radius: 12,
                                  backgroundColor: AppColors.grey,
                                  child: Text(
                                    '+50',
                                    style: TextStyle(fontSize: 11),
                                  ),
                                )
                              : CircleAvatar(
                                  radius: 12,
                                  backgroundColor: Color.fromARGB(
                                    250,
                                    Random().nextInt(255),
                                    Random().nextInt(255),
                                    Random().nextInt(255),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              const Row(children: [
                Icon(
                  Icons.access_time,
                  color: Colors.white,
                  size: 20,
                ),
                SizedBox(width: 5),
                Text(
                  '45 Minutes',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ]),
              const Spacer(flex: 2),
              MyButton(
                text: 'See On The Map',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

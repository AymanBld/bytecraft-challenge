import 'package:bytecraft_challeng/constants.dart';
import 'package:flutter/material.dart';

class Draggablee extends StatefulWidget {
  const Draggablee({
    super.key,
  });

  @override
  State<Draggablee> createState() => _DraggableeState();
}

class _DraggableeState extends State<Draggablee> {
  double x = 50;
  double y = 100;
  @override
  Widget build(BuildContext context) {
    double limitH = MediaQuery.of(context).size.height - 330;
    double limitW = MediaQuery.of(context).size.width;
    return SizedBox(
      height: limitH,
      child: Stack(
        children: [
          Positioned(
            left: x,
            top: y,
            child: GestureDetector(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 78,
                    width: 209,
                    padding: const EdgeInsets.all(9),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff3e3e3e).withOpacity(0.9),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          width: 63,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            'assets/images/image 3.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 10),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Lemon Garden',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '2.09 mi',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 50,
                          width: 2,
                          color: const Color(0xff3e3e3e).withOpacity(0.9),
                        ),
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xff3e3e3e).withOpacity(0.9),
                              radius: 12,
                            ),
                            const CircleAvatar(
                              backgroundColor: AppColors.firstcolore,
                              radius: 6,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              onPanUpdate: (details) {
                x += details.delta.dx;
                y += details.delta.dy;

                if (x < 0) {
                  x = 0;
                }
                if (y < 0) {
                  y = 0;
                }
                if (x > limitW - 209) {
                  x = limitW - 209;
                }
                if (y > limitH - 150) {
                  y = limitH - 150;
                }
                setState(() {});
              },
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PageChild1 extends StatelessWidget {
  const PageChild1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Image.asset(
            'assets/2.png',
            fit: BoxFit.cover,
          ),
        ),
        // Align(
        //     alignment: Alignment.bottomRight,
        //     child: Positioned(
        //         bottom: 15,
        //         right: 30,
        //         child: Container(
        //             height: 130,
        //             width: 130,
        //             decoration: BoxDecoration(
        //                 color: Colors.white.withOpacity(0.8),
        //                 borderRadius: const BorderRadius.only(
        //                     topLeft: Radius.circular(130))),
        //             alignment: Alignment(0.35, 0.35),
        //             child: Positioned(
        //               left: 0,
        //               top: 0,
        //               child: Material(
        //                 borderRadius: const BorderRadius.only(
        //                     topLeft: Radius.circular(130)),
        //                 color: Colors.transparent,
        //                 child: InkWell(
        //                     onTap: () {
        //                       Navigator.of(context).pushNamedAndRemoveUntil(
        //                           '/dash', (Route<dynamic> route) => false);
        //                     },
        //                     borderRadius: const BorderRadius.only(
        //                         topLeft: Radius.circular(130)),
        //                     child: const Text(
        //                       'Home',
        //                       textAlign: TextAlign.right,
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontSize: 20,
        //                           color: Color.fromARGB(255, 156, 30, 30)),
        //                     )),
        //               ),
        //             ))))
      ],
    );
  }
}

class PageChild2 extends StatelessWidget {
  const PageChild2({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Image.asset(
            'assets/3.png',
            fit: BoxFit.cover,
          ),
        ),
        // Align(
        //     alignment: Alignment.bottomRight,
        //     child: Positioned(
        //         bottom: 15,
        //         right: 30,
        //         child: Container(
        //             height: 130,
        //             width: 130,
        //             decoration: BoxDecoration(
        //                 color: Colors.white.withOpacity(0.8),
        //                 borderRadius: const BorderRadius.only(
        //                     topLeft: Radius.circular(130))),
        //             alignment: Alignment(0.35, 0.35),
        //             child: Positioned(
        //               left: 0,
        //               top: 0,
        //               child: Material(
        //                 borderRadius: const BorderRadius.only(
        //                     topLeft: Radius.circular(130)),
        //                 color: Colors.transparent,
        //                 child: InkWell(
        //                     onTap: () {
        //                       Navigator.of(context).pushNamedAndRemoveUntil(
        //                           '/dash', (Route<dynamic> route) => false);
        //                     },
        //                     borderRadius: const BorderRadius.only(
        //                         topLeft: Radius.circular(130)),
        //                     child: const Text(
        //                       'Home',
        //                       textAlign: TextAlign.right,
        //                       style: TextStyle(
        //                           fontWeight: FontWeight.bold,
        //                           fontSize: 20,
        //                           color: Color.fromARGB(255, 156, 30, 30)),
        //                     )),
        //               ),
        //             ))))
      ],
    );
  }
}

class PageChild3 extends StatelessWidget {
  const PageChild3({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            'assets/4.png',
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius:
                        const BorderRadius.only(topLeft: Radius.circular(130))),
                alignment: const Alignment(0.35, 0.35),
                child: Material(
                  borderRadius:
                      const BorderRadius.only(topLeft: Radius.circular(130)),
                  color: Colors.transparent,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            '/dash', (Route<dynamic> route) => false);
                      },
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(130)),
                      child: const Text(
                        'Home',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Color.fromARGB(255, 156, 30, 30)),
                      )),
                )))
      ],
    );
  }
}

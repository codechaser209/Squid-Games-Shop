import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 445 * MediaQuery.of(context).size.height / 926,
            decoration: BoxDecoration(
                color: const Color(0xFFBA1440).withOpacity(0.15),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(
                        30 * MediaQuery.of(context).size.height / 926))),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 15 * MediaQuery.of(context).size.height / 926,
                    horizontal: 20 * MediaQuery.of(context).size.width / 428),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(Icons.arrow_back, color: Color(0xFFBA1440)),
                        Icon(CupertinoIcons.profile_circled,
                            color: Color(0xFFBA1440))
                      ],
                    ),
                    SizedBox(
                        height: 280 * MediaQuery.of(context).size.height / 926,
                        width: 280 * MediaQuery.of(context).size.width / 428,
                        child: Image.asset('assets/item_screen.png')),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Row(
                          children: List.generate(
                        3,
                        (index) => Container(
                            height:
                                10 * MediaQuery.of(context).size.height / 926,
                            width: 0 == index
                                ? 45 * MediaQuery.of(context).size.width / 428
                                : 20 * MediaQuery.of(context).size.width / 428,
                            margin: EdgeInsets.only(
                                right: 10 *
                                    MediaQuery.of(context).size.width /
                                    428),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 *
                                    MediaQuery.of(context).size.height /
                                    926),
                                color: 0 == index
                                    ? const Color(0xFFBA1440)
                                    : const Color(0xFFBA1440)
                                        .withOpacity(0.3))),
                      )),
                    ]),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20 * MediaQuery.of(context).size.width / 428,
                vertical: 10 * MediaQuery.of(context).size.width / 428),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Front Man Mask',
                        style: Theme.of(context).textTheme.headline2),
                    Container(
                      height: 30 * MediaQuery.of(context).size.height / 926,
                      width: 76 * MediaQuery.of(context).size.width / 428,
                      decoration: BoxDecoration(
                          color: const Color(0xFFBA1440),
                          borderRadius: BorderRadius.circular(
                              30 * MediaQuery.of(context).size.height / 926)),
                      child: Center(
                          child: Text('Marks',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  ?.copyWith(
                                      fontSize: 12, color: Colors.white))),
                    )
                  ],
                ),
                Text('\$65.7', style: Theme.of(context).textTheme.headline1),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber[400]),
                    SizedBox(
                        width: 2 * MediaQuery.of(context).size.width / 428),
                    Icon(Icons.star, color: Colors.amber[400]),
                    SizedBox(
                        width: 2 * MediaQuery.of(context).size.width / 428),
                    Icon(Icons.star, color: Colors.amber[400]),
                    SizedBox(
                        width: 2 * MediaQuery.of(context).size.width / 428),
                    Icon(Icons.star_border, color: Colors.grey[400]),
                    SizedBox(
                        width: 2 * MediaQuery.of(context).size.width / 428),
                    Text('(53)',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(fontSize: 16))
                  ],
                ),
                SizedBox(height: 20 * MediaQuery.of(context).size.height / 926),
                Text('Description',
                    style: Theme.of(context)
                        .textTheme
                        .headline2
                        ?.copyWith(fontSize: 16)),
                SizedBox(height: 5 * MediaQuery.of(context).size.height / 926),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam pharetra pellentesque lacus. Aenean eu libero est. Quisque at velit finibus, venenatis sapien eget, luctus augue. Nam finibus ante ac purus dignissim, at faucibus dolor ultricies. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed ac ultricies arcu. Vestibulum cursus dolor id justo lobortis, id rhoncus quam egestas. Quisque eros nisl, maximus a eleifend non, pellentesque quis nisi.',
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.justify)
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 20 * MediaQuery.of(context).size.width / 428,
                vertical: 10 * MediaQuery.of(context).size.width / 428),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 190 * MediaQuery.of(context).size.width / 428,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFBA1440)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15 *
                                          MediaQuery.of(context).size.height /
                                          926)))),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Add to cart',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 15),
                      ))),
                ),
                SizedBox(
                  width: 190 * MediaQuery.of(context).size.width / 428,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              const Color(0xFFBA1440).withOpacity(0.5)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15 *
                                          MediaQuery.of(context).size.height /
                                          926)))),
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        'Buy now',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontFamily: GoogleFonts.inter().fontFamily,
                            fontSize: 15),
                      ))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

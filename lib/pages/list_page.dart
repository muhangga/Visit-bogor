part of 'pages.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 130,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 24, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          size: 30,
                          color: whiteColor,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/user_pic.png'))),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
                Text(
                  'List Kuliner',
                  style: primaryTextStyle.copyWith(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: 370,
                    height: 170,
                    child: Stack(
                      children: [
                        Container(
                          width: 370,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/kul1.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                              width: 370,
                              height: 170,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withOpacity(0.45),
                                      Colors.black.withOpacity(0),
                                    ]),
                              )),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 70,
                          child: Text(
                            'Rasa & Sentra Khatulistiwa',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 45,
                          child: Text(
                            'Jalan Depan Unpak tapi disebelah',
                            style: whiteTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 15,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/star.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '4,5',
                                style: whiteTextStyle.copyWith(
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Container(
                    width: 370,
                    height: 170,
                    child: Stack(
                      children: [
                        Container(
                          width: 370,
                          height: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/kul2.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                              width: 370,
                              height: 170,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Colors.black.withOpacity(0.45),
                                      Colors.black.withOpacity(0),
                                    ]),
                              )),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 70,
                          child: Text(
                            'Warung Ayam Serundeng',
                            style: whiteTextStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 45,
                          child: Text(
                            'Ggireun tong sampah',
                            style: whiteTextStyle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 10,
                          bottom: 15,
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/star.png',
                                width: 20,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '100,5',
                                style: whiteTextStyle.copyWith(
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

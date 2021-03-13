part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.brightness_5_outlined,
                    color: primaryColor,
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hallo!',
                            style: primaryTextStyle.copyWith(
                              fontSize: 17,
                            ),
                          ),
                          Text(
                            'Victoria Smith',
                            style: primaryTextStyle.copyWith(
                              fontSize: 25,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/photo.png',
                        width: 60,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 24,
                  ),
                  child: Text(
                    'Popular',
                    style: primaryTextStyle.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_cooking.png',
                          width: 68,
                          height: 42,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Kuliner',
                          style: primaryTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_shop.png',
                          width: 68,
                          height: 42,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Coffe Shop',
                          style: primaryTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'assets/icon_wisata.png',
                          width: 68,
                          height: 42,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Wisata Alam',
                          style: primaryTextStyle,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24,),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Popular',
                        style: primaryTextStyle.copyWith(
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Show More',
                        style: greyTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Popular(),
                SizedBox(
                  height: 24,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24,),
                  child: Text(
                    'Kategori',
                    style: primaryTextStyle.copyWith(fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                Kategori(),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 55,
        width: MediaQuery.of(context).size.width - (2 * 24),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_list.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_user.png',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
